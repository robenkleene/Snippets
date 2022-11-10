require "optparse"

# Parse Arguements
launch=false
options = {}
option_parser = OptionParser.new do |opts|
  opts.on("-l") do    
    launch=true
  end
end
option_parser.parse!

# Log arguements
# puts options.inspect

if !launch
  s = HTTPServer.new(Port: 2000,DocumentRoot: "~")

  trap("INT") { s.shutdown }
  s.start
else
  Launch::WEBrickHTTPServer.new(:DocumentRoot => "~").start
end