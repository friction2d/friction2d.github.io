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
3rdparty/ffmpeg
3rdparty/ffmpeg_win
3rdparty/unwind
3rdparty/xkbcommon
"

for md in ${FILES}; do
    ${PANDOC} --standalone --template ${CWD}/pandoc/template.html ${md}.md -o ${md}.html
done

