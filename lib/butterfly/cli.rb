class Butterfly::CLI 
  
  def call  
    puts "**************  Welcome to my furniture shop!  ****************"
    puts "***** Let us help you find the right living room seating for your home. *****"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "* To begin your search, please type 'list' to see a list of product names."
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    get_list
    end

# Input: User requests to see list of product names to select from (request_list)

  def get_list
    @chairs = ['list']
  end
  
# Output: Show user a list of chairs (show_list)
  
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
 
  def show_information_for(chosen_chair) 
    chair = @chairs[chosen_chai]
    put "Here are the details for #{chair}"
    binding.pry 
  end


end 

end  
