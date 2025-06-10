#!/usr/bin/env zsh

elm make src/Main.elm --output=static/main.js --optimize # --debug

# Minify the output with UglifyJS
pnpx uglify-js static/main.js \
  --compress "pure_funcs=[F2,F3,F4,F5,F6,F7,F8,F9],pure_getters=true,keep_fargs=false,unsafe_comps=true,unsafe=true" \
  --mangle \
  --output static/main.min.js
