#contains all the details about each chair selected

class Butterfly::Details
  @@all = []
  attr_accessor :details 
  
  def initialize(details)
    @details = details
    save
  end
  
  def self.all
    Butterfly::Scraper.scrape_details if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end
end