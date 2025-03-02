---
title: "Shader Effects"
layout: documentation
permalink: documentation/shaders.html
categories: documentation
order: 9
---

# Shaders Effects

* table of contents
{:toc}

Shader effects let users create their own raster effects. You need two files to get started with shader effects.

- The [XML](https://www.w3schools.com/xml/xml_whatis.asp) **.gre** file defines properties visible in the interface, and values passed to the fragment shader.
- The [GLSL fragment shader](https://www.khronos.org/opengl/wiki/Fragment_Shader) **.frag** file defines the effect for a given set of values defined in **.gre** file.

To use shader effects, both **.gre** and **.frag** files have to be placed in:
- **Linux**: `home_directory/.config/friction/ShadersEffects`
- **Windows**: `home_directly\AppData\Local\friction\ShadersEffects`
- **macOS**: `home_directory/Library/Preferences/friction/ShadersEffects/`

The **.gre** and **.frag** files have to share a name, e.g., `exampleEffect.gre` and `exampleEffect.frag`.

[Here you can find some examples](https://github.com/friction2d/friction-shader-plugins)

## Definitions (*.gre file)

### Root Element

```xml
<ShaderEffect name="Example Effect">
  <!-- Properties (optional) -->
  <!-- Script (optional) -->
  <!-- glValues (optional) -->
  <!-- Margin (optional) -->
</ShaderEffect>
```

A **ShaderEffect** [root element](https://en.wikipedia.org/wiki/Root_element) has only a **name** attribute. The **name** will be visible in **Friction** interface.
The **ShaderEffect** encloses **Properties**, a **Script**, **glValues**, and a **Margin** for the effect.

### Properties

There are four types of properties:

- **int** - integer properties
- **float** - floating-point number properties
- **vec2** - two-value float properties
- **color** - four-value (red, green, blue, alpha) float properties

All types of properties are animatable, meaning their values can change with time. All properties have to be defined inside **Properties** element, and use the **Property** tag name.

```xml
<ShaderEffect name="Example Effect">
    <Properties>
        <Property name="exampleProperty" nameUI="example property"
                  type="float" min="0" max="100" ini="8" step="1"
                  glValue="true" resolutionScaled="true"/>
        <!-- More Properties (optional) -->
    </Properties>
    <!-- Script (optional) -->
    <!-- glValues (optional) -->
    <!-- Margin (optional) -->
</ShaderEffect>
```

You can see the resulting interface elements in the screenshot below.

![example](/assets/documentation/shaders/shaders_1.png)

#### Property Attributes

- **name** - name used to reference the property from the **Script** and fragment shader (if **glValue** is true), no spaces or special characters.
- **nameUI** - name visible in **Friction** interface.
- **xnameUI** - name of the x component of **vec2** property.
- **ynameUI** - name of the y component of **vec2** property.
- **type** - type of the property (**int**, **float**, **vec2**).
- **min** - minimum value.
- **max** - maximum value.
- **ini** - initial value.
- **step** - value increment for user interactions.
- **glValue** - whether the property is used in the fragment shader.
- **resolutionScaled** - whether the property value is multiplied by scene resolution.

**vec2** attributes support values like `[x, y]` or `x` expanded to `[x, x]`.

#### Default Attribute Values

- **name** - required, no default.
- **nameUI** - same as **name**.
- **xnameUI** - `x`.
- **ynameUI** - `y`.
- **type** - required, no default.
- **min** - `0`.
- **max** - `100`.
- **ini** - `0`.
- **step** - `1`.
- **glValue** - `false`.
- **resolutionScaled** - `false`.

### Script (optional)

```xml
<ShaderEffect name="Example Effect">
    <!-- Properties -->
    <Script>
        <!-- Obviously, it is just an example,
             it would make more sense to
             multiply the value directly from
             the 'Calculate' portion of the script,
             without the function definition -->
        <Definitions> <!-- Optional -->
            <!-- JavaScript functions for use in Calculate -->
            function exampleFunction(x) {
                return 2*x;
            }
        </Definitions>
      
        <!-- Variables defined with 'extern' can be accessed
             from glValue and Margin 'value' scripts. -->
        <Calculate>
            var exampleLocalVariable = Math.PI * exampleProperty;
            extern exampleExternVariable = exampleFunction(exampleLocalVariable);
        </Calculate>
    </Script>
    <!-- glValues -->
    <!-- Margin (optional) -->
</ShaderEffect>
```

**Script** is divided into two portions, both of which should be written in JavaScript:

- **Definitions** - here you can define functions, it is run only once, it cannot access property values
- **Calculate** - it is run every time the effect is being called, lets you **extern** variable to use them in **glValue** and **Margin** scripts. You can use functions defined in **Definitions**. You can access **Property** values.

Values for **vec2** properties are passed as arrays `[x, y]`.

**Friction** provides **_eRect**, an additional variable you can access directly from **Calculate**, and glValue and **Margin** scripts. **_eRect** corresponds to the bounding rectangle `[x, y, width, height]` for the object the effect is being applied to. Please note, that the **_eRect** corresponds to the bounding rectangle prior to applying the **Margin**. To see how to use **_eRect**, you can checkout the example eExplode effect and eDots.

### glValues (optional)

**.gre file:**

```xml
<ShaderEffect name="Example Effect">
    <Properties>
        <Property name="exampleProperty" nameUI="example property"
                  type="float" min="0" max="100" ini="8" step="1"/>
    </Properties>
    <Script>
        <Definitions>
            function exampleFunction(x) {
                return 2*x;
            }
        </Definitions>
        <Calculate>
            var exampleLocalVariable = Math.PI * exampleProperty;
            extern exampleExternVariable = exampleFunction(exampleLocalVariable);
        </Calculate>
    </Script>
    <glValues>
        <glValue name="exampleValue" type="float" value="exampleExternVariable"/>
    </glValues>
</ShaderEffect>
```

**.frag file:**

```javascript
#version 330 core
layout(location = 0) out vec4 fragColor;

in vec2 texCoord

uniform sampler2D texture;

uniform float exampleValue; // the same name as the glValue

void main(void) {
    fragColor = vec4(color.rgb, exampleValue); 
}
```

**glValues** have no representation in the user interface. Instead, they let you pass variables you defined as **extern**, in the **Calculate** portion of the **Script**, to the fragment shader.

#### Attributes

- **name** - name that will be used to reference the value from the fragment shader, cannot contain spaces or special characters, e.g., `exampleValue`
- **type** - value type (`float`, `vec2`, `vec3`, `vec4`, `int`, `ivec2`, `ivec3`, `ivec4`).
- **value** - specifies the value, e.g., `0`, `exampleProperty*5`, `[exampleVec2Property[0]*5, exampleVec2Value[1]*5]`(**vec2** only)

### Margin

Some effects might need to expand the texture size, e.g., blur effects require additional space depending on the radius. **Friction** will expand the texture for you, all you have to do is define the **Margin**.

```xml
<ShaderEffect name="Example Blur">
    <Properties>
        <Property name="blurRadius" nameUI="blur radius"
                  type="float" min="0" max="100" ini="0" step="1"
                  glValue="true" resolutionScaled="true"/>
    </Properties>
    <Margin value="blurRadius"/>
</ShaderEffect>
```

![Margin example](/assets/documentation/shaders/shaders_2.png)

The **Margin** only has the **value** attribute.
All variables defined as ‘extern’ in the **Calculate** portion of the **Script** are available to the **Margin** along with all the **Property** values. The **Margin** can be defined with four values `[left, top, right, bottom]`, with two values `[horizontal, vertical]`, which translates to `[horizontal, vertical, horizontal, vertical]`, or with a single value margin, which translates to `[margin, margin, margin, margin]`.
To see how to use **Margin**, you can checkout the example eExplode effect.

## Fragment Shader (*.frag file)

**multiplyRed.gre file:**

```xml
<ShaderEffect name="Multiply Red">
    <Properties>
        <Property name="red" type="float" min="0" max="1"
                  ini="0" step="0.1" glValue="true"/>
    </Properties>
</ShaderEffect>
```

**multiplyRed.frag file:**

```javascript
// Friction uses OpenGL 3.3
#version 330 core
// output color
layout(location = 0) out vec4 fragColor;

// processed texture coordinate, from the vertex shader
in vec2 texCoord;

// texture provided by Friction
uniform sampler2D texture;
// the value for the 'red' property
uniform float red;

void main(void) {
    // texture pixel color at the coordinate
    vec4 color = texture2D(texture, texCoord);
    // assign value to the output color,
    // multiply red by the 'red' property value
    fragColor = vec4(color.r * red, color.g, color.b, color.a); 
}
```

**Result:**

![exampleRed](/assets/documentation/shaders/shaders_3.png)

If you are familiar with fragment shaders, the example above should be easy to understand.
**Friction** provides a texture `uniform sampler2D texture;`, values for all **Properties** with `glValue="true"`, and all **glValues**.
The type of the value passed to the fragment shader is the same, as the type of the **Property**/**glValue**:

- **float** - `uniform float exampleFlotPropVal;`
- **int** - `uniform int exampleIntPropVal;`
- **vec2** - `uniform vec2 exampleVec2PropVal;`