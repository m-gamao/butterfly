#CLI interacts with the user

class Butterfly::CLI 
  
  def call  
    puts "**************  Welcome to my furniture shop!  ****************"
    puts "***** Let us help you find the right living room seating for your home. *****"
    puts "* To begin your search, please type 'list' to see a list of product names."
    get_list
    list_chairs
    user_selects_chair
    end

# Input: User requests to see list of product names to select from (request_list)

  def get_list
    Butterfly::Scraper.scrape_chairs
    @chairs = Butterfly::Chair.all 
  end
  
# Output: Show user a list of chairs 
  
  def list_chairs
    puts "Choose a product to see information"
    @chairs.each.with_index(1) do |chair, index|
      puts "#{index}. #{chair}"
    end
   
# Input: User selects a chair by number (user_select_product)
  
  def user_selects_chair
    chosen_chair = gets.strip
    if valid_input(chosen_chair, @chairs)
      show_information_for(chosen_chair)  
    end
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0 
  end 

# Output: Show information on the chair selected (show_info)
# use minus 1 in the method because the index of an array always starts at 0 
  def show_information_for(chosen_chair) 
    chair = @chairs[chosen_chair - 1]
    puts "Here are the details for #{chair}"
    # To implement
    #Butterfly::Detail.all.each.with_index(1) do | detail |
     # puts.detail.name 
     #end
     #user_selects_chair
  end


end 

end 
