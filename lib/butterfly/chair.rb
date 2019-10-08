#contains all the chair names
class Butterfly::Chair
  @@all = []
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    save
  end
  
  def self.all
    Butterfly::Scraper.scrape_chairs if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end
end