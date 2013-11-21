#!/usr/bin/env ruby

require 'optparse'

options = {
  :run_long_tests => false,
}

option_parser = OptionParser.new do |opts|
  executable_name = File.basename($PROGRAM_NAME)
  opts.banner = "Usage: #{executable_name} [options]"
  opts.banner= <<-EOS
Usage: #{executable_name} [options] database_name

  EOS
  opts.on("-l",
          "--run-long-tests",
          "Run long tests") do 
    options[:run_long_tests] = true
  end
end

begin
  option_parser.parse!
rescue OptionParser::InvalidOption => ex
  STDERR.puts ex.message
  STDERR.puts option_parser
  exit 1
end

if options[:run_long_tests]
  puts "true"
else
  puts "false"
end  