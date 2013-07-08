# This function uses lambdas to output information in a format similar to that used by Rack.

my_rack_proc = lambda{ |env|
    responseContent = ""

    if env["GET"] != nil
        responseContent = sprintf("Command line argument you typed was: %s.\n", env['GET'])
    else
        responseContent = "No argument was entered.\n"
    end
    
    [
    200,
    {"Content-Type" => "text/plain"},
    [responseContent]
    ]
}

puts my_rack_proc.call({"GET" => ARGV[0]})
