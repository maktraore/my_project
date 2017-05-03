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
class Food < Store
  def initialize(input_hash)
    super
    @shelf_life = input_hash[:shelf_life]
  end
end
object1 = Store.new(items: "watch", count: 5, price:50)
object1.count = 10
p object1.items
p object1.count
p object1.price
