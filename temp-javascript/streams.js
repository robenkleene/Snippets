var stream = require('stream');

var stringStream;
stringStream = new stream.Readable();
stringStream._read = function(string) {
  this.push(string);
  this.push(null);
};

var lineStream = new stream.Transform( { objectMode: true } );
lineStream._transform = function (chunk, encoding, done) {
  var data = chunk.toString();
  if (this._lastLineData) {
    data = this._lastLineData + data;
  }

  var lines = data.split('\n');
  this._lastLineData = lines.splice(lines.length - 1, 1)[0];

  lines.forEach(this.push.bind(this));
  done();
};
lineStream._flush = function (done) {
  if (this._lastLineData) {
    this.push(this._lastLineData);
  }
  this._lastLineData = null;
  done();
};

var outputStream;
outputStream = new stream.Writable();
outputStream._write = function (chunk, encoding, next) {
  output = chunk.toString();
  console.log(output);
  next();
};

testString = "a\nb\n\nc";

stringStream._read(testString);
stringStream.pipe(lineStream).pipe(outputStream);
