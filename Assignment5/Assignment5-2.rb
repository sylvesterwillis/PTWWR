# Uses openuri to search for 'the' within HTML source of given page.
# A check is performed for occurence at start of sentence as well.

require 'open-uri'

url = 'http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html'


open(url) do |f|
    source = f.read
    printf("The word 'the' occurs %d times.\n", source.to_s.scan(/[ ]*[Tt]he /).count)
end
