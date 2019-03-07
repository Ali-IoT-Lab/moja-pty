var os = require('os');

var mojaPty = function () {
if (os.arch() == 'arm64'){
    return require('node-pty');
  }else {
    return require('node-pty-prebuilt');
  }
};


module.exports = {
  "moja_pty" : mojaPty
};

