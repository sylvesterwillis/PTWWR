# This function uses Rack to support to create an application that outputs the 
# argument entered.

require 'rack'

responseContent = ""

if ARGV.count > 0 
    responseContent = sprintf("Command line argument you typed was: %s.\n", ARGV[0])
else
    responseContent = "No argument was entered.\n"
end

my_rack_proc = lambda{ |env|
    [
    200,
    {"Content-Type" => "text/plain"},
    [responseContent]
    ]
}

Rack::Server.new(:app => my_rack_proc, :server => 'webrick', :Port => 8500).start

