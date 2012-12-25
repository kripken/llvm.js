
  return new Uint8Array(FS.root.contents['llvm.bc'].contents);
};

print(llvmAs());

