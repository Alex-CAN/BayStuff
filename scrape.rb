require 'HTTParty'
require 'Nokogiri'
require 'JSON'
require 'Pry'
require 'csv'
require 'awesome_print'


page = HTTParty.get("http://www.nbcbayarea.com/news/local/")

parsed_page = Nokogiri::HTML(page)

# binding.pry
top_stories = parsed_page.css('.carousel-stories>li')


top_stories.each do |story|
  ap story
  p "-"*40

end
# binding.pry
