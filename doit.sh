~/Dev/emscripten/emcc -O2 --llvm-lto 0 --closure 0 llvm-as.bc -o llvm-as.pre.js --embed-file llvm.ll
cat shell-pre.js > llvm-as.js
cat llvm-as.pre.js >> llvm-as.js
cat shell-post.js >> llvm-as.js

