#!/bin/bash

CWD=`pwd`
PANDOC="${CWD}/pandoc/bin/pandoc"
FILES="
about
privacy
3rdparty/skia
3rdparty/skia_bundle
3rdparty/gperftools
3rdparty/qscintilla
3rdparty/qt
"

for md in ${FILES}; do
    ${PANDOC} --standalone --template ${CWD}/pandoc/template.html ${md}.md -o ${md}.html
done

