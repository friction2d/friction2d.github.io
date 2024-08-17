#!/bin/sh
if [ ! -f Gemfile ]; then
    echo "source 'https://rubygems.org'" > Gemfile
    echo "gem 'jekyll'" >> Gemfile
fi
bundle exec jekyll serve --drafts
