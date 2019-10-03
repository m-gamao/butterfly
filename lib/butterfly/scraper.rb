class Butterfly::Scraper 
  attr_accessor :name :info
  
  def self.scrape_chairs
    doc = Nokogiri::HTML(open("https://www.roomandboard.com/catalog/living/sofas-and-loveseats"))
    
    chairs = doc.css("div.pg-name")
    
    chairs.each do |c|
      name = c.text  
      Butterfly::Chair.new(name)
    end
    
    def self.scrape_details
   doc = Nokogiri::HTML(open("https://www.roomandboard.com/catalog/living/sofas-and-loveseats"))
   
   details = doc.css("div.pg-details div.pg-name div.pg-price-range div.pg-options")
   
   details.each do |d|
     info = d.text
     Butterfly::Details.new(info)
  end
end 

    
    
    
    
    
    
    
    
