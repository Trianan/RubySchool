#!/usr/bin/ruby 

# RUBY WHILE & UNTIL LOOPS:

# While loops:
print "Enter a number: "
n = Integer gets
print "\n"

i = 0
level = []
while i < n # 'do' can be added here.
  if i % 2 == 0
    level << '#'
  else level << '@'
  end
  level.each {|brick| print brick}
  print "\n"
  i += 1 # Remember to have an exit condition!
  break if i > 100000 # Breaks before while statements evals false.
end

# Until loops:
i = n
until i == 0 # Runs until expression is true.
  level.each {|brick| print brick}
  print "\n"
  level.pop
  i-=1
end

print "#{i += 7} " until i == (7*n) # Untils may modify statements.
print "\n"

# Unless statements:
if n > 60 
  print "You animal.\n"
else print "Very considerate.\n"
end

unless n > 60 # Unless statements invert if-statements.
  print "Very considerate.\n"
else print "You animal.\n"
end # The if and unless statements' output should match.




