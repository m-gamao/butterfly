#cli.rb
#CLI interacts with the user

require 'pry'

class Butterfly::CLI

  # these are the only text commands we accept

  VALID_INPUTS = ['list', 'menu', 'exit']

  def call
    puts "**************  Welcome to my furniture shop!  ****************"
    puts "***** Let us help you find the right living room seating for your home. *****"
    get_list
    menu
  end

  def menu
    puts ""
    puts "           Here is what you can do    "
    puts "********************************************************"
    puts "* Type 'list' to see a list of chairs                  *"
    puts "* Type a chair number to see information about it      *"
    puts "* Type 'menu' to see this again.                       *"
    puts "* Type 'exit' if you want to quit                      *"
    puts "********************************************************"
    perform_action
  end
  
  def perform_action
    input = gets.strip
    # keeps running until user types exit
      case input
        when 'list'
          list_chairs
          user_selects_chair
        when 'menu'
          menu
        when 'exit'
          goodbye
      
        
        when input.numeric?

          user_selects_chair(chosen_chair)        
    end
    
  end
  

  # def get_user_input
  #   gets.strip
  # end


  # Scraper
  def get_list
    Butterfly::Scraper.scrape_chairs
    @chairs = Butterfly::Chair.all
  end


# Output: Show user a list of chairs
  def list_chairs
    puts "Choose a product to see information"
    @chairs.each.with_index(1) do |chair, index|
      puts "#{index}. #{chair.name}"
    end
    puts "**************************************"
    puts "Type the number of the chair that you wish you see."
  end


# Input: User selects a chair by number (user_select_product)
  def user_selects_chair(chosen_chair)
    if valid_input(chosen_chair, @chairs)
      show_information_for(chosen_chair)
    else
      puts "***************************"
      puts "Please enter a valid input."
    end
  end
  
  
  def valid_input(input, data)
    # input is something, and its either a valid command like 'menu' or 'list' or its a valid chair number'
    !input.empty? && (VALID_INPUTS.include?(input.downcase)) || (input.to_i <= data.length && input.to_i > 0)
  end


# Output: Show information on the chair selected (show_info)
# use minus 1 in the method because the index of an array always starts at 0

  def show_information_for(chosen_chair)
    # get the index of the chair
    chair = @chairs[chosen_chair.to_i - 1]
    puts "Here are the details for #{chair.name}"
    puts chair.name
    puts chair.details[:options]
    puts chair.details[:price]
    puts "**************************************************************************************"
    puts "To see a different chair enter another chair number or type 'list' to see them again."
  end

  
  def goodbye
    puts "Goodbye!"
    exit
  end
end