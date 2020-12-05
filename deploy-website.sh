#!/bin/bash

set -ev


echo "Config"

git config --global user.name "GitHub Actions"
git config --global user.email "ci@scalatra.org"


ls -al
# total 5428
# drwxrwxr-x  6 travis travis    4096 Mar 26 13:49 .
# drwxrwxr-x  3 travis travis    4096 Mar 26 13:49 ..
# -rw-------  1 travis travis    1679 Mar 26 13:49 deploy_key
# -rw-rw-r--  1 travis travis    1680 Mar 26 13:49 deploy_key.enc
# drwxrwxr-x  8 travis travis    4096 Mar 26 13:49 .git
# -rwxrwxr-x  1 travis travis    2404 Mar 26 13:49 hello.sh
# -rw-rw-r--  1 travis travis 5511722 Feb 27 12:53 hugo_0.19-64bit.deb
# -rw-rw-r--  1 travis travis    1271 Mar 26 13:49 README.MD
# drwxrwxr-x 25 travis travis    4096 Mar 26 13:49 scalatra
# drwxrwxr-x  3 travis travis    4096 Mar 26 13:49 scalatra-docbuild
# drwxrwxr-x 11 travis travis    4096 Mar 26 13:49 scalatra-website
# -rw-rw-r--  1 travis travis     380 Mar 26 13:49 .travis.yml



echo "Build"


# Final site is in scalatra-docbuild/gh-pages
cd scalatra-docbuild
git checkout gh-pages

# always build full site
rm -rf *

cd ..


# Build scalatra site
cd scalatra-website
git checkout origin/master

ls -al

hugo -b https://scalatra.github.io/scalatra-docbuild/ -d gh-pages || true

ls -al
ls -al gh-pages

rsync -av gh-pages/* ../scalatra-docbuild

cd ..


# Commit and push changes
cd scalatra-docbuild
ls -al
git add --all .
git commit -m "Built gh-pages"
git push origin gh-pages


echo "Done"
