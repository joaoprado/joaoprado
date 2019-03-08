#!/usr/bin/env sh

# abort on errors
set -e

# build
docker exec -it dev_workspace_1 bash -c "cd joaoprado && npm run build"
docker exec -it dev_workspace_1 bash -c "cd joaoprado/dist && echo 'joaoprado.com.br' > CNAME"

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:joaoprado/joaoprado.github.io.git master

cd -
