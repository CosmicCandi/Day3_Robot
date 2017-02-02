#!/usr/bin/env ruby

### Explorer Mode ###
class Robot
  attr_accessor :name, :height

  #Define a Robot class: A robot has a name
  # => Robots should also have a height, with a default value of 10
  def initialize (name, height = 10)
    @name = name
    @height = height
  end

  # => A robot instance should have a method called 'say_hi' and it should return "Hi!"
  def say_hi
    puts "Hi!"
  end

  # => A robot instance should have a method called 'say_name' and it should return "My name is X" where X is the robot's name
  def say_name
    puts "My name is #{name}!"
  end

end

#Create a new robot instance
robot = Robot.new("Kalea")
#Call the say_hi and say_name methods and
puts "This is the robot we just created: "
puts robot.inspect

#Add a new Line
puts "\n"

puts "This is the robot saying Hi: "
puts robot.say_hi

#Add a new Line
puts "\n"


puts "This is the robot introducing itself: "
puts robot.say_name
puts "\n #\#\# \n "

#Define a BendingUnit class
# => A BendingUnit inherits from Robot
class BendingUnit < Robot
 attr_accessor :objecttobend
# => A bending unit instance has a method called 'bend'
# => The bend method has one argument 'objecttobend'
  def bend(objecttobend)
    # => The bend method should put to the console "Bend X!" where X is objecttobend
    @objecttobend = ARGV[0]
    puts "Bend a #{objecttobend}!"
  end

end

newbender = BendingUnit.new("Bender")
puts "This Bending Unit is bending a statically assigned thing. Watch it... "
newbender.bend("A Shovel")

#Add a new Line
puts "\n"

puts "Now watch it.. "
newbender.bend(ARGV[0])

#Add a new Line
puts "\n"

#Define an ActorUnit class
# => An ActorUnit inherits from Robot
class ActorUnit < Robot
  attr_accessor :name
# => An ActorUnit instance has a method called 'change_name'
# => The 'changename' method accepts an argument 'newname'
# => The 'changename' method changes the name property of the robot to 'newname'
 def change_name=(new_name)
   @name = new_name
   self.inspect
 end
end

puts "We just created a new Actor Unit."
newactor = ActorUnit.new("Mister Snuffles")

puts "The new Actor Unit's name is Mister Snuffles"
puts newactor.inspect
newactor.say_name

#Add a new Line
puts "\n"

puts "Mister Snuffles has been working hard on his new role! See him now as: "
puts newactor.change_name = "Alabaster McBAMFington"
puts newactor.inspect
newactor.say_name

#Add a new Line
puts "\n"

### Adventure Mode###
#Take our student array from yesterday and (programmatically) create robots out of all of them and store them in an array.
our_class = ["Ron", "David", "Nancy", "Kalea", "Laura", "Dave", "Demetra", "Phil",
"Ben", "Kendrick", "Michael", "Miguel"]

puts "Let's see what the our_class Array holds:"
puts our_class.inspect

#Add a new Line
puts "\n"

puts "Now we're going to iterate over that array and turn everybody into robots!
Behold the Science Fiction-y goodness! Also note that they were randomly assigned
a robot type! NEAT, right?!"

#Add a new Line
puts "\n"

# => Do the previous using an Enumerable method other than each
#for each name, turn it into a variable where variable = robot.new(variable) and then send it into an array.
class_array = [Robot, BendingUnit, ActorUnit]
robot_array = our_class.collect {|newrobot|
  ### Epic Mode ###
  # Randomly assign the class of the robot on creation.
  class_array.sample.new(newrobot)}

puts robot_array.inspect
