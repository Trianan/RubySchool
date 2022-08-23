#!/usr/bin/ruby 

# ADVANCED RUBY ARRAYS:

# Concatenating arrays:
a1 = (1..5).to_a
a2 = (6..10).to_a
print "
  a1 = #{a1}
  a2 = #{a2}
  a3 = #{a1 + a2}
  a4 = #{a2.concat(a1)}\n"

# Appending elements:
a5, a6 = [2,4,6,8,10], [1,3,5,7,9]
print "
  a5 = #{a5}
  a6 = #{a6}
  a7 = #{a5 << "Even" << "(Divisible by 2)"}
  a8 = #{a6 << "Odd"}\n"

# Set operations on arrays:
a, b = [1,3,4,8,5], [4,3,9,1,1]
print "
  a = #{a}, b = #{b}
  difference = #{a - b}
  intersection = #{a & b}
  union = #{a | b}
  uniques of #{b} = #{b.uniq}
  uniq! of #{b} = #{b.uniq!}, (b = #{b} now)\n"

# Push/pop operations:
stack = ("dish_1".."dish_25").to_a
print "\nstack = #{stack}\n"
stack.push "dish_26"
print "\n#{stack.pop}, #{stack.pop}, #{stack.pop}, #{stack.pop}, #{stack.pop}\n"

# Array comparison:
a, b = [1,2,3,4,5], [1.0,2.0,3.0,4.0,5.0]
print "\n#{a} == #{b} ?: #{a == b}\n"
b.pop
print "\n#{a} == #{b} ?: #{a == b}\n"
b.push 6.0
print "\n#{a} == #{b} ?: #{a == b}\n"
b.pop
b.push 5.0
print "\n#{a}.eql?(#{b}) ?: #{a.eql?(b)}\n" # Strict on type.
# Spaceship operator:
b.push 6.0
print "
  #{a} <=> #{b} = #{a <=> b}
  #{b} <=> #{a} = #{b <=> a}
  #{a.push 6} <=> #{b} = #{a <=> b}\n"

# Inserting and changing elements:
a = ('a'..'e').to_a
print "
  a = #{a}
  Insert 'f' at index 2: #{a.insert(2, 'f')}\n"
a[0] = 'z'
a[2..4] = '!', '!', '!'
print "
  Changing elements by index: #{a}\n"

# Deleting elements by index or content:
a.delete_at(1)
a.delete('!')
print "
  'a' after deletions: #{a}\n"

# Sorting and reversing arrays:
a = [3,5,6,7,4,2,34,2,2,2,34,325,4,5,0,5,34,2,2,4]
print "
  a = #{a}
  sort a: #{a.sort}
  a = #{a}
  sort! a: #{a.sort!} 
  reverse sorted a: #{a.reverse}\n"
