# as
../emscripten/emcc -Oz -v --llvm-lto 3 --pre-js shell-as-pre.js --post-js shell-as-post.js llvm-as.bc -o llvm-as.js
# dis
../emscripten/emcc -Oz -v --llvm-lto 3 --pre-js shell-dis-pre.js --post-js shell-dis-post.js llvm-dis.bc -o llvm-dis.js
