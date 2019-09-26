class Butterfly::CLI 
  
  def start  # instance method
    puts "**************  Welcome to my furniture shop!  ****************"
    puts "***** Let us help you find the right living room seating for your home. *****"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "* To begin your search, please select from the following options" 
    puts "  And enter the corresponding number:"
    puts "* 1) Product name, 2) Product type, 3) Price range, 4) Reviews"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    input = gets.strip
    case input
      when "1"
        puts "In Product Names"
        # Scrape the sofa page 
        url = "https://www.roomandboard.com/catalog/living/sofas-and-loveseats"
        Butterfly::Scraper.scrape_categories(url)
      when "2"
        puts "In Product Types"
      when "3"
        puts "In Price Ranges"
      when "4"
        puts "In Reviews"
      when "exit"
        puts "Goodbye"
      else  
        #They didn't put in the correct input
        puts "invalid"
      end
    end
  end