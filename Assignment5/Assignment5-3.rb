# Uses Nokogiri to search for 'the' within HTML source of given page.
# A check is performed for occurence at start of sentence as well.
require 'open-uri'
require 'nokogiri'

url = 'http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html'

document = Nokogiri::HTML(open(url)).to_s

printf("'the' occurs %d times.\n", document.scan(/[ ]*[Tt]he /).count)
