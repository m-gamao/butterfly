class Butterfly::Scraper 
  attr_accessor :name, :info
  
  def self.scrape_chairs
    doc = Nokogiri::HTML(open("https://www.roomandboard.com/catalog/living/sofas-and-loveseats"))
  
    chairs = doc.css(".product-group")
   
    chairs.each do |c|
      name = c.css('.pg-name').text
      options = c.css('.pg-options').text
      price = c.css('.pg-price-range').text
      # ratings = c.css(...selector for ratings image ).attr('alt')
      details = {options: options, price: price}
      Butterfly::Chair.new(name, details)
    end
  end
    
  #   def self.scrape_details
  #  doc = Nokogiri::HTML(open("https://www.roomandboard.com/catalog/living/sofas-and-loveseats"))
  # 
  # 
  #  chair_details = Butterfly::Details.new(detail_data)
  #  Butterfly::Chair.new(name, chair_details)
  # 
  #  details.each do |d|
  #    details = d.text
  #    Butterfly::Details.new(details)
  #   end
  # end 

#chair.rb
#contains all the chair names
class Butterfly::Chair
  @@all = []
  attr_accessor :name, :details
  
  def initialize(name, details)
    @name = name 
    @details = details
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
end