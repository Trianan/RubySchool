#!/usr/bin/ruby 

# RUBY OBJECT-ORIENTED PROGRAMMING:

# Used to access code in another Ruby file:
require '.\Rectangle'

# Creating a new instance of a class, and calling one of its methods:
s = Rectangle.new([20, 40], "red")
s.test

# Modifying instance-variables using setters:
s.sides[0] = 60
s.colour = "blue"
s.test

# Creating subclass inheriting from superclass:
class RectangularPrism < Rectangle
  def dimension
    @@dimension = "3D"
  end
  def volume
    return (sides[0] * sides[1] * sides[2]).to_s + units + "^3"
  end
  def test
    print "
      #{sides}
      #{colour}
      #{dimension}
      #{volume}\n"
  end
end

# Creating instance of subclass:
rp = RectangularPrism.new([20, 40, 60], "purple")
rp.test