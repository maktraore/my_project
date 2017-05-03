
class Store
  attr_reader :items, :price
  attr_accessor :count
  def initialize(input_hash)
    @items =  input_hash[:items]
    @count = input_hash[:count]
    @price = input_hash[:price]
  end

def add_item(x)
  @items<< x 
end

def count=(input_count)
  @count = input_count
end

end
class Food 
  include My_module
  
end
