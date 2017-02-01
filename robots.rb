#!/usr/bin/env ruby

### Explorer Mode ###
class Robot
  attr_accessor :name

  #Define a Robot class: A robot has a name
  def initialize (name)
    @name = name
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
robot.say_hi
robot.say_name

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
#newbender.bend("A Shovel")
newbender.bend(ARGV[0])



#Define an ActorUnit class
# => An ActorUnit inherits from Robot
# => An ActorUnit instance has a method called 'change_name'
# => The 'changename' method accepts an argument 'newname'
# => The 'changename' method changes the name property of the robot to 'newname'

### Adventure Mode###
#Take our student array from yesterday and (programmatically) create robots out of all of them and store them in an array.
# => Do the previous using an Enumerable method other than each
# => Robots should also have a height, with a default value of 10

### Epic Mode ###
# Randomly assign the class of the robot on creation.
