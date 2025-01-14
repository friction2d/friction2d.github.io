---
title: "Expressions"
layout: default
permalink: documentation/expressions.html
---

# Expressions

![Expressions screenshot](/assets/documentation/expressions/expressions_screenshot.png)

Expressions in **Friction** allow users to create dynamic animations by using code to control object properties. Instead of relying on manual keyframes, the user can use expressions to automate behaviors, connect parameters, and add randomness or complexity.

Expressions are written in **[ECMAScript](https://en.wikipedia.org/wiki/ECMAScript)**. Each property in Friction has an optional expression field where you can input code that dynamically calculates the property's value for each frame.

---

In order to create an expression, the user should select a single parameter in the Timeline panel or in the Properties one, click on the secondary button and select "**Set Expression**".

The Expressions popup window has 2 tabs:
* Editor: where the Expressions are setup.
* Easing: a simple way to create an easing animation for a parameter.

![Expressions popup window](/assets/documentation/expressions/expressions_1-2.png)

## 1. Bindings

In this section the user can create variables of properties with values coming from the scene:

- **`$value`**: the numeric value the property has, that is, the constant number or actual value driven by keyframes.
- **`$frame`**: the actual frame value. Afterwards this value could be divided by the scene FPS to turn it into a time value.
- **`property`**: by writing a hierarchy separed by dots `.` it is possible to get any property value from the scene. If it is referred to the object where the Expression is being written there is no need to start by writing the name of the object.

Some examples:
```javascript
value = $value;
frame = $frame;
position_x = transform.translation.x;
position_y = transform.translation.y;
opacity = transform.opacity;
```

Note that it's not possible to add here constant variables like `lenght = 100;`.  That must be done in the **Calculate section**.

Friction is not capable yet to get a value coming from another time or frame as in other famous software.

## 2. Calculate

In this section the user is able to define constants, do calculations, use **ECMAScript (JavaScript)** functions.

Example:
```javascript
width = 100;
final_value = width / 2;
return final_value;
```

For convenience, it is possible to write custom funtions that are stored in the "**Definitions**" tab.

Note that this section must always finish with a `return` line where it is defined the final value that gets the Expression.

Example:
```javascript
return position_x * 2;
```

## 3. Definitions

When the user wants to add complex or long custom functions, they can be included here and called later in the **Calculate** section.

![Expressions popup window](/assets/documentation/expressions/expressions_3.png)

A simple example of use would be adding this function in the **Definitions** panel:
```javascript
function my_simple_function (value1, value2) {
    return value1 + value2;
}
```

And then in the **Calculate** one:
```javascript
one = 100;
two = 200;
return my_simple_function(one, two);
```

## Useful expressions

Following up there is a list of commonly used expressions so that new users can test and learn:

### Clamp

**Bindings**:
```javascript
value = $value;
```

**Calculate**:
```javascript
return clamp (value, 0, 100);
```

**Definitions**:
```javascript
function clamp (num, lower, upper) {
    return Math.min(Math.max(num, lower), upper);
}
```

### Simple Wiggle (random)

**Bindings**:
```javascript
value = $value;
frame = $frame;
```

**Calculate**:
```javascript
return smoothWiggleX(2, 20, frame, value)
```

**Definitions**:
```javascript
function smoothWiggleY(frequency, amplitude, time, start) {
    var offsetY = Math.cos(time * frequency * 1.3) * amplitude + start;
    return offsetY
}

function smoothWiggleX(frequency, amplitude, time, start) {
    var offsetX = Math.sin(time * frequency) * amplitude + start;
    return offsetX
}
```

### Wiggle
Ported from Blender's noise modifier:

**Bindings**:
```javascript
frame = $frame;
```

**Calculate**:
```javascript
const fps = 30;
const value = 200;
const time = frame / fps;
// generateNoise(time, scale, strength, phase, detail)
const noise = generateNoise(time, 0.6, 20, 5, 4);
return noise+value
```

**Definitions**:
```javascript
function generateNoise(t, scale = 1, strength = 1, phase = 0, detail = 1) {
    // Fixed permutation for consistency
    const permutation = Array.from({ length: 256 }, (_, i) => i).concat(Array.from({ length: 256 }, (_, i) => i));
    
    function fade(t) {
        return t * t * t * (t * (t * 6 - 15) + 10);
    }

    function lerp(a, b, t) {
        return a + t * (b - a);
    }

    function grad(hash, x) {
        const h = hash & 15;
        const gradient = 1 + (h & 7); // Gradient range between 1 and 8
        return (h & 8 ? -gradient : gradient) * x;
    }

    function perlinNoise(x) {
        const X = Math.floor(x) & 255;
        x -= Math.floor(x);
        const u = fade(x);

        const a = permutation[X];
        const b = permutation[X + 1];

        return lerp(grad(a, x), grad(b, x - 1), u);
    }

    let amplitude = strength;
    let frequency = scale;
    let total = 0;

    for (let i = 0; i < detail; i++) {
        total += perlinNoise((t + phase) * frequency) * amplitude;
        frequency *= 2;       // Double frequency for each octave
        amplitude /= 2;       // Halve amplitude for each octave
    }
    return total;
}

```

### Loop

**Bindings**:
```javascript
frame = $frame;
```

**Calculate**:
```javascript
loopDuration = 60;
startValue = 0;
finalValue = 1;
return  startValue + ((frame % loopDuration) / loopDuration) * (finalValue - startValue)
```

### Orbit

For a easier control of this expression, some *custom properties* are created but it could be modified to don't use them and just add the values in the **Calculate** section:

**Custom properties**
* centerX (pixels)
* centerY (pixels)
* radius (pixels)
* speed (frames)
* direction (1 clockwise, -1 counter clockwise)
* offset (degrees)

**Bindings**:
```javascript
centerX = properties.centerX;
centerY = properties.centerY;
radius = properties.radius;
speed = properties.speed;
direction = properties.direction;
offset = properties.offset;
frame = $frame;
```

**Calculate** (for `translate X` parameter):
```javascript
var offset = offset * (Math.PI / 180);
var centerOfComp = [centerX, centerY];
var circleOverTime = [ Math.sin( (frame/speed) * 2 * Math.PI * direction + offset ) * radius, -Math.cos( (frame/speed)* 2 * Math.PI * direction + offset ) * radius ];  
return centerOfComp[0] + circleOverTime[0];
```

**Calculate** (for `translate Y` parameter):
```javascript
var offset = offset * (Math.PI / 180);
var centerOfComp = [centerX, centerY];
var circleOverTime = [ Math.sin( (frame/speed) * 2 * Math.PI * direction + offset ) * radius, -Math.cos( (frame/speed) * 2 * Math.PI * direction + offset ) * radius ];  
return centerOfComp[1] + circleOverTime[1];
```

