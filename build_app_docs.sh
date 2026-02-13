#!/bin/sh
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
BUILD=${CWD}/build-docs

if [ -d "${BUILD}" ]; then
    rm -rf ${BUILD}
fi
mkdir -p ${BUILD}
cd ${BUILD}

mkdir -p _layouts assets/backgrounds assets/documentation

cp ${CWD}/_config_app.yml _config.yml
cp ${CWD}/_layouts_app/* _layouts/
cp ${CWD}/assets/style-doc.css assets/style.css
cp ${CWD}/assets/logo.svg assets/
cp ${CWD}/assets/backgrounds/friction-background-007.svg assets/backgrounds/
cp ${CWD}/assets/documentation/question.svg assets/documentation/

PAGES="
animation_techniques.md
effects.md
export.md
expressions.md
faq.md
index.md
learning.md
shaders.md
shortcuts.md
tips.md
usage.md
userinterface.md
"
for page in ${PAGES}; do cp ${CWD}/documentation/${page} . ; done

ASSETS=`grep -ho 'assets/[^"'\''\)]*' ${PAGES} | sort | uniq`
sed -i 's/permalink: documentation\//permalink: /g; s/\/assets/assets/g' ${PAGES}
sed -i 's/permalink: /permalink: index/g' index.md
sed -i 's/\/assets\///g' assets/style.css

for asset in ${ASSETS}; do
    relative_path=${asset#assets/}
    asset_dir=$(dirname "${relative_path}")
    mkdir -p "${BUILD}/assets/${asset_dir}"
    cp "${CWD}/${asset}" "${BUILD}/assets/${relative_path}"
done

tree -lah

echo "source 'https://rubygems.org'" > Gemfile
echo "gem 'jekyll'" >> Gemfile
bundle exec jekyll build
