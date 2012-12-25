# as
~/Dev/emscripten/emcc -O2 --llvm-lto 0 --closure 0 llvm-as.bc -o llvm-as.pre.js --embed-file llvm.ll
cat shell-as-pre.js > llvm-as.js
cat llvm-as.pre.js >> llvm-as.js
cat shell-as-post.js >> llvm-as.js
# dis
~/Dev/emscripten/emcc -O2 --llvm-lto 0 --closure 0 llvm-dis.bc -o llvm-dis.pre.js --embed-file llvm.bc
cat shell-dis-pre.js > llvm-dis.js
cat llvm-dis.pre.js >> llvm-dis.js
cat shell-dis-post.js >> llvm-dis.js

