#!/bin/bash

CWD=`pwd`
PANDOC="${CWD}/pandoc/bin/pandoc"
FILES="
about
privacy
"

for md in ${FILES}; do
    ${PANDOC} --standalone --template ${CWD}/pandoc/template.html ${md}.md -o ${md}.html
done

