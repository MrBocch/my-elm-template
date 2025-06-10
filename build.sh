#!/usr/bin/env zsh

elm make src/Main.elm --output=static/main.js --optimize # --debug

# Minify the output with UglifyJS
# this is outdated because its using 'uglifyjs' but its still nice to look at
# https://github.com/elm/compiler/blob/9d97114702bf6846cab622a2203f60c2d4ebedf2/hints/optimize.md 
pnpx uglify-js static/main.js \
  --compress "pure_funcs=[F2,F3,F4,F5,F6,F7,F8,F9],pure_getters=true,keep_fargs=false,unsafe_comps=true,unsafe=true" \
  --mangle \
  --output static/main.min.js
