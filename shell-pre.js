
var llvmAs = function(assembly) {

  var Module = {
    arguments: ['llvm.ll'],
    preRun: function() {
      //FS.createDataFile('/', 'llvm.ll', intArrayFromString(assembly), true, false);
    }
  };

