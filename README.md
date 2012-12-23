llvm.js
=======

LLVM compiled to JavaScript using Emscripten


Generating the Bitcode
----------------------

In a build directory under llvm root, run

  emconfigure ../configure --enable-optimized --disable-jit --disable-threads --disable-pthreads --enable-targets=x86
  emmake make

You will hit errors on attempting to use tblgen and others, the build system is self-executing, but we generate bitcode that is unrunnable. When the errors happen, copy in the file from a parallel native build, and edit the Makefile of the parent dir that generates that file to not call it (otherwise, running make again will go back and overwrite the one you just copied in). Re-run make.

You may also hit errors on all-targets including Hexagon stuff, not sure why. To avoid that, edit the Makefiles and replace all-targets with x86.

Then copy from the bin/ directory the relevant bitcode files to here, with suffix .bc

Run doit.sh

