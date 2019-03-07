var os = require('os');
var moduleName = '';

if (os.arch() == 'arm64'){
  moduleName = 'node-pty';
}else {
  moduleName = 'node-pty-prebuilt';
}

var mojaPty = function () {
  return require(moduleName);
};

module.exports = {
  "moja_pty" : mojaPty
};

