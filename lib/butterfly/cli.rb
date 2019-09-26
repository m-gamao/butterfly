class Butterfly::CLI 
  
  def start  # instance method
    puts "**************  Welcome to my furniture shop!  ****************"
    puts "***** Let us help you find the right living room seating for your home. *****"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "* To begin your search, please select from the following options" 
    puts "  And enter the corresponding number:"
    puts "* 1) Product name, 2) Product type, 3) Price range, 4) Reviews"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  
    end
  
  def list_products
    @products = Butterfly::Product.all 
  end
  
  def find_by_price
    @products.each.with.index
  
  
  
  
  
  
  end
  
#  Methods to define:
#List Product Names: Program lists all product names, prices, and reviews.
#List product names in price range: User selects a price range. Program outputs products within that price range and list in numerical order by price, lowest to highest.
#List options for product: User chooses a product name and program lists all options for that product.
