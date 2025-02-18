default:
  just --choose --justfile "{{justfile()}}"

build:
  nh home build .

switch:
  nh home switch .
