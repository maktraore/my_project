require store 
require module
object1 = Store.new(items: "watch", count: 5, price:50)
object1.count = 10
p object1.items
p object1.count
p object1.price