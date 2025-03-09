default:
  just --choose --justfile "{{justfile()}}"

build: git-pull
  nh home build .

switch: git-pull
  nh home switch .

git-pull:
  git pull
