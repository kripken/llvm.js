#~/Dev/emscripten/emcc -O2 --closure 0 llvm-as.bc -o llvm-as.pre.js
cat shell-pre.js > llvm-as.js
cat llvm-as.pre.js >> llvm-as.js
cat shell-post.js >> llvm-as.js

