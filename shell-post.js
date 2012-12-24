
  return new Uint8Array(FS.root.contents['llvm.bc'].contents);
};

print(llvmAs('; ModuleID = "tests/hello_world.bc"\ntarget datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"\ntarget triple = "i386-pc-linux-gnu"\n\n@.str = private unnamed_addr constant [15 x i8] c"hello, world!\0A\00", align 1 ; [#uses=1 type=[15 x i8]*]\n\n; [#uses=0]\ndefine i32 @main() {\nentry:\n  %retval = alloca i32, align 4                   ; [#uses=1 type=i32*]\n  store i32 0, i32* %retval\n  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0)) ; [#uses=0 type=i32]\n  ret i32 1\n}\n\n; [#uses=1]\ndeclare i32 @printf(i8*, ...)\n'));

