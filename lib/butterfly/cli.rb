class Butterfly::CLI 
  
  def call  
    puts "**************  Welcome to my furniture shop!  ****************"
    puts "***** Let us help you find the right living room seating for your home. *****"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "* To begin your search, please type "list" to see a list of product names."
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  
    end
  
  def get_list
    @chairs = ['list']
  end
  
  def list_chairs
    @chairs.each.with_index(i) do |chair, index|
      puts "#{index}. #{chair}"
    end
  end
end
  
  
  
=begin
Notes: 
Methods to define-
List Product Names: Program lists all product names, prices, and reviews.
List product names in price range: User selects a price range. Program outputs products within that price range and list in numerical order by price, lowest to highest.
List options for product: User chooses a product name and program lists all options for that product.

1) Class CLI - user interaction
  aim:
    - getting data from user:
    - data output to show user:
  methodology:
    -Input: User requests to see list of product names to select from (request_list)
    -Output: Show user a list of products (show_list)
    -Input: User selects a product (select_product)
    -Output: Show information on the product selected (show_info)
 =end   
    