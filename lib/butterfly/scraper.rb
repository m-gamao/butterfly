class Butterfly::Scraper 
  def self.scrape_chairs
    doc = Nokogiri::HTML(open("https://www.roomandboard.com/catalog/living/sofas-and-loveseats"))
    
    chairs = doc.css("div.pg-name")
    
    chairs.each do |c|
      name = c.text  
      Butterfly::Chair.new(name)
    end
  end
end 

    
    
    
    
    
    
    
    
