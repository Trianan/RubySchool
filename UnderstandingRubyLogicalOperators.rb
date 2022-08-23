#!/usr/bin/ruby 

# UNDERSTANDING RUBY LOGICAL OPERATORS:

a, b = 1, 2
print "
  #{a} < #{b} and #{b} == 2: #{a < b and b == 2}
  #{a} < #{b} && #{b} == 2: #{a < b && b == 2}
  #{a} < #{b} or #{b} == 2: #{a < b or b == 2}
  #{a} < 0 || #{b} == 2: #{a < 0 || b == 2}
  #{a} < #{b} ^ #{b} == 2: #{a < b ^ b == 2}
  !(#{a} < #{b}): #{!(a < b)}\n"
# "or" is not an exclusive OR operator.
# bool_a ^ bool_b is the Ruby XOR operator.