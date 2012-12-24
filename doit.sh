~/Dev/emscripten/emcc -O2 --closure 0 llvm-as.bc -o llvm-as.pre.js --embed-file llvm.ll -s LABEL_DEBUG=1 -s LIBRARY_DEBUG=1
cat shell-pre.js > llvm-as.js
cat llvm-as.pre.js >> llvm-as.js
cat shell-post.js >> llvm-as.js

