#!/bin/bash
#
# Friction - https://friction.graphics
#
# Copyright (c) Ole-André Rodlie and contributors
#
# This program is free software: you can redistribute it and/or modify 
# it under the terms of the GNU General Public License as published by 
# the Free Software Foundation, version 3.
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
SED=${SED:-sed}

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
sed -i  "s/NicKraneis/Nic Kraneis/g" ${BUILD}/friction-theme.txt

cd ${BUILD}
git clone ${ORG}/friction-shader-plugins
cd friction-shader-plugins
git shortlog -sne --all > ${BUILD}/friction-shaders.txt

# Filter out duplicates
cd ${BUILD}
find . -type f -name "*.txt" -exec ${SED} -i "/luz paz </d" {} \;
find . -type f -name "*.txt" -exec ${SED} -i "/luzpaz </d" {} \;
find . -type f -name "*.txt" -exec ${SED} -i "/André </d" {} \;
find . -type f -name "*.txt" -exec ${SED} -i "/AG <68/d" {} \;
find . -type f -name "*.txt" -exec ${SED} -i "/liebner@proton/d" {} \;
find . -type f -name "*.txt" -exec ${SED} -i "/maurycyliebner/d" {} \;
find . -type f -name "*.txt" -exec ${SED} -i "/MaurycyLiebner/d" {} \;

# Generate About
DOC=${CWD}/about.md

echo "---" > ${DOC}
echo "title: About" >> ${DOC}
echo "layout: default" >> ${DOC}
echo "permalink: about.html" >> ${DOC}
echo "---" >> ${DOC}
echo >> ${DOC}

echo "Friction is copyright &copy; Ole-André Rodlie and contributors." >> ${DOC}
echo >> ${DOC}
echo "This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, version 3." >> ${DOC}
echo >> ${DOC}
echo "This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details." >> ${DOC}
echo >> ${DOC}
echo "You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>." >> ${DOC}
echo >> ${DOC}

echo "### Contributors" >> ${DOC}
echo >> ${DOC}

cat friction.txt friction-theme.txt friction-web-docs.txt friction-shaders.txt | awk '{$1=""; print $0}' | awk '!seen[$0]++' | awk {'print "-"$0'} | ${SED} 's/^ //g;s/<.*//' >> ${DOC}
echo "- Jonathan (Nuxttux Creative)" >> ${DOC}
echo "- tonton (samytichadou)" >> ${DOC}
echo "- eFe Muñoz" >> ${DOC}
echo "- Alex Kiryanov" >> ${DOC}
echo >> ${DOC}

echo "Friction is based on enve - Copyright &copy; Maurycy Liebner and contributors." >> ${DOC}
echo >> ${DOC}
cat enve.txt | awk {'$1=""; print "-"$0'} | ${SED} 's/^ //g;s/<.*//' >> ${DOC}
echo >> ${DOC}

cat ${DOC}
