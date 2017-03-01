class HomepageController < ApplicationController
  def index
    newspage = HTTParty.get("http://www.nbcbayarea.com/news/local/")
    parsed_newspage = Nokogiri::HTML(newspage)
    @top_stories = parsed_newspage.css('.carousel-stories>li')
    
    eventpage = HTTParty.get("https://www.eventbrite.com/d/ca--san-francisco/events/?mode=search")
    parsed_eventpage = Nokogiri::HTML(eventpage)
    # @events = parsed_page.css('')
  end
end
