# Uses net/http and URI to search for 'the' within HTML source of given page.
# A check is performed for occurence at start of sentence as well.
require 'net/http'

url = URI('http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html')

source = Net::HTTP.get(url)

printf("'the' occurs %d times.\n", source.to_s.scan(/[ ]*[Tt]he /).count)


