#!/bin/bash
#
# Friction - https://friction.graphics
#
# Copyright (c) Friction contributors
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

set -e -x

CWD=`pwd`
CAP="2023-01-01"
BUILD=${CWD}/build-contributors
ORG=https://github.com/friction2d

if [ -d "${BUILD}" ]; then
    rm -rf ${BUILD}
fi
mkdir -p ${BUILD}

cd ${BUILD}
git clone ${ORG}/friction
cd friction
git shortlog -sne --all --after=${CAP} > ${BUILD}/friction.txt
git shortlog -sne --all --until=${CAP} > ${BUILD}/enve.txt

cd ${BUILD}
git clone ${ORG}/friction2d.github.io
cd friction2d.github.io
git shortlog -sne --all > ${BUILD}/friction-web-docs.txt

cd ${BUILD}
git clone ${ORG}/friction-icon-theme
cd friction-icon-theme
git shortlog -sne --all > ${BUILD}/friction-theme.txt

cd ${BUILD}
git clone ${ORG}/friction-shader-plugins
cd friction-shader-plugins
git shortlog -sne --all > ${BUILD}/friction-shaders.txt

# Filter out duplicates
cd ${BUILD}
find . -type f -name "*.txt" -exec sed -i "/André </d" {} \;
find . -type f -name "*.txt" -exec sed -i "/AG <68/d" {} \;
find . -type f -name "*.txt" -exec sed -i "/liebner@proton/d" {} \;
find . -type f -name "*.txt" -exec sed -i "/maurycyliebner/d" {} \;
find . -type f -name "*.txt" -exec sed -i "/MaurycyLiebner/d" {} \;

# Generate About
DOC=${CWD}/about.md

echo "---" > ${DOC}
echo "title: About" >> ${DOC}
echo "layout: default" >> ${DOC}
echo "permalink: about.html" >> ${DOC}
echo "---" >> ${DOC}
echo >> ${DOC}
echo "**Friction is a powerful and versatile motion graphics application that allows you to create vector and raster animations for web and video with ease.**" >> ${DOC}
echo >> ${DOC}
echo "This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE." >> ${DOC}
echo >> ${DOC}

echo "## Contributors" >> ${DOC}
echo >> ${DOC}
cat friction.txt | awk {'$1=""; print "-"$0'} |sed 's/^ //g;s/<.*//' >> ${DOC}
echo >> ${DOC}

echo "## Theme and UX" >> ${DOC}
echo >> ${DOC}
cat friction-theme.txt | awk {'$1=""; print "-"$0'} |sed 's/^ //g;s/<.*//' >> ${DOC}
echo >> ${DOC}

echo "## Web and Documentation" >> ${DOC}
echo >> ${DOC}
cat friction-web-docs.txt | awk {'$1=""; print "-"$0'} |sed 's/^ //g;s/<.*//' >> ${DOC}
echo >> ${DOC}

echo "## Plugins (Effects)" >> ${DOC}
echo >> ${DOC}
cat friction-shaders.txt | awk {'$1=""; print "-"$0'} |sed 's/^ //g;s/<.*//' >> ${DOC}
echo >> ${DOC}

echo "## Testers" >> ${DOC}
echo >> ${DOC}
echo "- eFe Muñoz" >> ${DOC}
echo "- Adam Belis" >> ${DOC}
echo "- Alex Kiryanov" >> ${DOC}
echo >> ${DOC}

echo "## enve" >> ${DOC}
echo >> ${DOC}
echo "Friction is based on the code base from the enve project." >> ${DOC}
echo >> ${DOC}
cat enve.txt | awk {'$1=""; print "-"$0'} |sed 's/^ //g;s/<.*//' >> ${DOC}
echo >> ${DOC}

cat ${DOC}

#
# André <
# 68183694
# liebner@proton
# maurycyliebner

#FORMAT="### %s%n* **Commit:** %H%d%n* **Author:** %an%n* **Date:** %ad%n%n%b"

#FROM_TAG=${FROM_TAG:-""}
#TO_TAG=${TO_TAG:-""}

#if [ "${FROM_TAG}" != "" ] && [ "${TO_TAG}" != "" ]; then
#    echo "# ChangeLog for ${TO_TAG}" > ${LOG}-${TO_TAG}.md
#    echo "" >> ${LOG}-${TO_TAG}.md
#    git log --pretty=format:"${FORMAT}" --no-merges ${FROM_TAG}...${TO_TAG} >> ${LOG}-${TO_TAG}.md
#elif [ "${TO_TAG}" != "" ]; then
#    echo "# ChangeLog for ${TO_TAG}" > ${LOG}-${TO_TAG}.md
#    echo "" >> ${LOG}-${TO_TAG}.md
#    git log --pretty=format:"${FORMAT}" --after="${AFTER}" ${TO_TAG} --no-merges >> ${LOG}-${TO_TAG}.md
#else
#    echo "# ChangeLog" > ${LOG}
#    echo "" >> ${LOG}
#    git log --pretty=format:"${FORMAT}" --after="${AFTER}" --no-merges >> ${LOG}.md
#fi
