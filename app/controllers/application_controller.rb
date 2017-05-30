class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
#   def scrape_reddit
#   render text: 'scrape reddit data here'
# end
class Entry
    def initialize(title, link)
      @title = title
      @link = link
    end
    attr_reader :title
    attr_reader :link
  end

  def scrape_reddit
    require 'open-uri'
    # require 'nokogiri'
    doc = Nokogiri::HTML(open("http://www.lolking.net/"))

    puts 'docs..'
    puts doc

    # entries = doc.css('.entry')
    @entriesArray = []
    doc.each do |entry|
      title = entry.css('p.title>a').text
      link = entry.css('p.title>a')[0]['href']
      @entriesArray << Entry.new(title, link)
    end
     render template: 'builds/scrape_reddit'
    #  render json: doc
  end
end
