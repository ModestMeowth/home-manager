IS_MOSH := if env("PARENT_PROCESS", "false") == ".mosh-server-wr" { "true" } else { "false" }

default:
  just --choose --justfile "{{justfile()}}"

build: git-pull
  nh home build . {{ if IS_MOSH == "true" { " --no-nom" } else { "" } }}

switch: git-pull
  nh home switch . {{ if IS_MOSH == "true" { " --no-nom" } else { "" } }}

git-pull:
  git pull
