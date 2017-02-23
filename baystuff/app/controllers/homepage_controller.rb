class HomepageController < ApplicationController
  def index
    page = HTTParty.get("http://www.nbcbayarea.com/news/local/")
    parsed_page = Nokogiri::HTML(page)
    @top_stories = parsed_page.css('.carousel-stories>li')
  end
end
