#!/usr/bin/ruby 

# RUBY RANGES:

# Creating inclusive and exclusive ranges, then converting them to arrays.
print "\nInclusive range: #{(1..10).to_a}\nExclusive range: #{(1...10).to_a}\n"

# Creating character ranges:
print "\n('a'..'g') = #{('a'..'g').to_a}\n"

# String-based ranges (!):
print "\nFiles 1 to 42: #{('file_1'..'file_42').to_a}\n"

# Object-based ranges may be created, providing that they have a "succ" function
# for returning the next object in the sequence, and that its possible for them
# to be compared with the <=> operator

# Creating a range and using some of its methods:
names = 'Player_1'..'Player_9'
print names.min + ' ' + 
    names.max + 
    " #{names.include?('Player_6')}\n" # Returns true/false if element in range.

print names.reject {|subset| subset > 'Player_5'} # Rejects elements in subrange.

# Iterating through range:
print "\n\nGreeting...\n"
names.each {|person| print "Hello, #{person}!\n"}

# Checking if something falls within a given range:
print "#{(1..100) === 38}\n#{('a'..'f') === 'v'}\n"

# Ranges as conditionals in case-statements:
print "Input your age: "
gets
age = Integer $_
result = case age
  when 0..3
    "\nBabby.\n"
  when 4..11
    "\nKid.\n"
  when 11..15
    "\nPreenager.\n"
  when 16..19
    "\nTeen.\n"
  when 19..60
    "\nAdult.\n"
  when 60..100
    "\nGeezer.\n"
  when 100..200
    "\nDemigod.\n"
  else "\nLiar.\n"
end
print result