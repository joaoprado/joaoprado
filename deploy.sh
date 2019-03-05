#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

echo 'joaoprado.com.br' > CNAME

git init
git add -A
git commit -m 'deploy'
