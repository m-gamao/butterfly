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
  
  def user_select_product
    chosen_chair = gets.strip
    binding.pry
    if valid_input(chosen_chair,)
  end
  
  def valid_input
    chosen_chair.to_i <= @chairs.length && chosen_chair.to_i < 0 

# Output: Show information on the chair selected (show_info)
end 
end   