module Characteristics
  def initialize
    @speed = 0
    @direction = 'north'
  
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
  end

class  Car 
  include Characteristics
 def initialize
  super
    @fuel = "gaz"
    @make= "Toyota"
    @model= "camry"
 end
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike 
  include Characteristics
  def initialize
    super
   @type = "Yamaha"
   @weight = 30
  end
 def ring_bell
    return "Ring ring!"
  end
end
car1 = Car.new
bike1 = Bike.new
p car1.brake
p bike1.accelerate
# p car1.ring_bell
p car1.honk_horn
p bike1.ring_bell

