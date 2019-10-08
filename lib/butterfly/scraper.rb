class Butterfly::Scraper 
  attr_accessor :name, :info
  
  def self.scrape_chairs
    doc = Nokogiri::HTML(open("https://www.roomandboard.com/catalog/living/sofas-and-loveseats"))
  
    chairs = doc.css("div.pg-name")
    
    chairs.each do |c|
      name = c.text  
      Butterfly::Chair.new(name)
    end
  end
    
    def self.scrape_details
   doc = Nokogiri::HTML(open("https://www.roomandboard.com/catalog/living/sofas-and-loveseats"))
   
 
   chair_details = Butterfly::Details.new(detail_data)
   Butterfly::Chair.new(name, chair_details)
   
   details.each do |d|
     details = d.text
     Butterfly::Details.new(details)
    end
  end 
end


    
    
    
    
    
    
    
