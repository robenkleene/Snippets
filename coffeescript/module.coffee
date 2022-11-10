fs = require 'fs'
path = require 'path'

fixturesPath = path.resolve(__dirname, '..', 'fixtures')

exports.readFixtureFile = (filename) ->
  filePath = path.join(fixturesPath, filename)
  fs.readFileSync(filePath).toString()
