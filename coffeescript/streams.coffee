stream = require 'stream'

stringStream = new stream.Readable()
stringStream._read = (string) ->
  @push(string)
  @push(null)

lineStream = new stream.Transform({objectMode: true})
lineStream._transform = (chunk, encoding, done) ->
  string = chunk.toString()
  if (@_lastLineData)
    string = @_lastLineData + string
  lines = string.split '\n'
  @_lastLineData = lines.splice(lines.length - 1, 1)[0]
  lines.forEach(@push.bind(@))
  done()
lineStream._flush = (done) ->
  if (@_lastLineData)
    @push(@_lastLineData)
  @_lastLineData = null
  done()

outputStream = new stream.Writable()
outputStream._write = (chunk, encoding, next) ->
  output = chunk.toString()
  console.log output
  next()

testString = "a\nb\n\nc"

stringStream._read(testString)
stringStream.pipe(lineStream).pipe(outputStream)
