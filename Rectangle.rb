# RECTANGLE CLASS DEFINITION FOR "RUBY OBJECT-ORIENTED PROGRAMMING":
class Rectangle
  # Class variable with getter:
  def dimension
    @@dimension = "2D"
  end
  def units
    @@units = "cm"
  end
  # Instance variables made accessible with getters and setters:
  def sides 
    @sides
  end
  def sides=(s)
    @sides = s
  end

  def colour 
    @colour 
  end
  def colour=(c)
    @colour = c
  end
  # Accessing instance-variables with getters:
  def area
    return (sides[0] * sides[1]).to_s + units + "^2"
  end
  def test
    print "
      #{sides}
      #{colour}
      #{dimension}
      #{area}\n"
  end
  # Initializing an instance with arguments:
  def initialize(s, c)
    @sides, @colour = s, c
  end
end