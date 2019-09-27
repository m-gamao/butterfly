class Butterfly::Scraper 
  def self.scrape_chairs
    doc = Nokogiri::HTML(open("https://www.roomandboard.com/catalog/living/sofas-and-loveseats"))
    binding.pry
  end
end 

    
    
    
    
    
    
    
    
