#!/bin/bash
set -e -x

CWD=`pwd`
PANDOC=${PANDOC:-${CWD}/../pandoc/bin/pandoc}
MD=${CWD}/friction.md
DOC=${CWD}/../documentation

cat ${CWD}/header.md > ${MD}

cat ${DOC}/index.md | sed '/^---$/,/^---$/d;s#/assets/#'${CWD}'/../assets/#g' | sed '/## Resources/Q' >> ${MD}
echo '\\newpage' >> ${MD}
cat ${CWD}/../about.md | sed '/^---$/,/^---$/d;s/###/####/' >> ${MD}

PAGES="
userinterface
usage
shortcuts
export
expressions
shaders
faq
"

for page in $PAGES; do
    cat ${DOC}/${page}.md | sed '/^---$/,/^---$/d;s#/assets/#'${CWD}'/../assets/#g' >> ${MD}
done

${PANDOC} ${MD} --include-in-header header.tex -V linkcolor:blue -V geometry:a4paper -V geometry:margin=2cm -V lang=en --pdf-engine=xelatex --toc -o ${CWD}/friction.pdf
