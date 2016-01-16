# Create a Car Class from User Stories


# I worked on this challenge  with: Andrew Kim.


# 2. Pseudocode
# Input: model and the color for the new Car class.
# Output: Car
#   Step: Initialize the car's model and color
# Have method that: 1. define the distance travelled
# 2. changing the direction it took (left or right)
# 3. calculate the total mileage
# 4. drive a certain distance
# 5. stops the car



# 3. Initial Solution
# class Car
#   def initialize(model, color)
#     @model= model
#     @color= color
#     @mileage=0.0
#     @speed= 0
#     @pizza_compartment = []
#   end

#   def turn(direction)
#     puts "You just turned #{direction}."
#   end

#   def drive(distance)
#     @mileage+=distance
#     if @speed==0
#       @speed = 25
#     end
#     puts "You drove #{distance} miles at #{@speed} miles per hour."
#   end

#   def change_speed(speed)
#     @speed= speed
#     puts "You just changed your speed to #{@speed}."
#   end

#   def check_speed
#     puts "Your speed is #{@speed} miles per hour."
#   end

#   def stop
#     @speed=0
#     puts "You just came to a full stop."
#   end

#   def get_mileage
#     puts "You drove #{@mileage} miles."
#   end

#   def add_pizzas (pizzas)
#     pizzas.each do |pizza|
#       @pizza_compartment << pizza
#       puts "You added #{pizza.description} to your compartment."
#     end
#   end

#   def deliver_pizzas
#     the_delivery= @pizza_compartment.shift
#     puts "You delivered #{the_delivery.description}."
#   end

# end

# class Pizza
#   def initialize (toppings, crust, slices)
#     @toppings = toppings
#     @crust = crust
#     @slices = slices
#   end

#   def eat
#     if @slices == 0
#       puts "You don't have any pizza left."
#     else
#       @slices -= 1
#       puts "You have #{@slices} slices of pizza left"
#     end
#   end

#   def description
#     return "#{@slices} slices of #{@toppings} pizza with #{@crust} crust"
#   end

# end


# 4. Refactored Solution
class Car
  def initialize(model, color)
    @model= model
    @color= color
    @mileage=0
    @speed= 0
    @pizza_compartment = []
  end

  def turn(direction)
    puts "You just turned #{direction}."
  end

  def drive(distance)
    @mileage+=distance
    if @speed==0
      @speed = 25
    end
    puts "You drove #{distance} miles at #{@speed} miles per hour."
  end

  def change_speed(speed)
    @speed= speed
    puts "You just changed your speed to #{@speed}."
  end

  def check_speed
    puts "Your speed is #{@speed} miles per hour."
  end

  def stop
    @speed=0
    puts "You just came to a full stop."
  end

  def get_mileage
    puts "You drove #{@mileage} miles."
  end

  def add_pizzas (pizzas)
    pizzas.each do |pizza|
      @pizza_compartment << pizza
      puts "You added #{pizza.description} to your compartment."
    end
  end

  def deliver_pizzas
    the_delivery= @pizza_compartment.shift
    puts "You delivered #{the_delivery.description}."
  end

end

class Pizza
  def initialize (toppings, crust, slices)
    @toppings = toppings
    @crust = crust
    @slices = slices
  end

  def eat
    if @slices == 0
      puts "You don't have any pizza left."
    else
      @slices -= 1
      puts "You have #{@slices} slices of pizza left"
    end
  end

  def description
    return "#{@slices} slices of #{@toppings} pizza with #{@crust} crust"
  end

end






# 1. DRIVER TESTS GO BELOW THIS LINE
my_car = Car.new("Rolls Royce", "Black")
my_pizza = Pizza.new("mushroom", "regular", 16)
my_pizza.eat
my_car.add_pizzas([my_pizza])
puts "-------------------"
my_car.drive(0.25)
my_car.turn("right")
my_car.change_speed(35)
my_car.drive(1.5)
my_car.check_speed
my_car.change_speed(15)
my_car.drive(0.25)
my_car.turn("left")
my_car.change_speed(35)
my_car.drive(1.4)
my_car.stop
my_car.get_mileage
my_car.deliver_pizzas






# 5. Reflection
# What concepts did you review in this challenge?
# Looping through arrays. Initializing objects from classes. if else structure

# What is still confusing to you about Ruby?
# I'm having trouble differentiating it from javascript
# What are you going to study to get more prepared for Phase 1?
# I'm going to look at class inheritence.

