llvm.js
=======

LLVM compiled to JavaScript using Emscripten


Generating the Bitcode
----------------------

In a build directory under llvm root, run

  emconfigure ../configure --enable-optimized --disable-jit --disable-threads --disable-pthreads --enable-targets=x86
  emmake make

You will hit errors on attempting to use tblgen and others, the build system is self-executing, but we generate bitcode that is unrunnable. When the errors happen, copy in the file from a parallel native build, and edit the Makefile of the parent dir (for llvm-tblgen, utils/, for llvm-config, tools/ and ./) that generates that file to not call it (otherwise, running make again will go back and overwrite the one you just copied in). Re-run make.

You may also hit errors on all-targets including Hexagon stuff, not sure why. To avoid that, edit the Makefiles and replace all-targets with x86 (specifically, in tools/opt, tools/llc. Note that these seem to be created/updated on the fly, as the later ones only show up after you fix earlier bugs, requiring multiple invocations of make.)

Then copy from the bin/ directory the relevant bitcode files to here, with suffix .bc

TODO: automate all preceding steps

Run doit.sh

