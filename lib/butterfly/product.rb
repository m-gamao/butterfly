class Butterfly::Product
  attr_accessor :name
  attr_writer :price
  attr_writer :options  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    Butterfly::Scraper.scrape_names if @@all.empty?
    @@all
  end
  
  def price
    binding.pry
    Butterfly::Scraper.scrape_price(self) if @@price.empty?
    @price
  end
  
  
  
  def save
    @@all << self
  end
end