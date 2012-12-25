
  return new Uint8Array(FS.root.contents['llvm.ll'].contents);
};

print(llvmAs());

