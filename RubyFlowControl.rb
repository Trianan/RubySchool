#!/usr/bin/ruby 

# RUBY FLOW CONTROL:

# if-statements:
maxscore = 1000000000
hiscore = 100399
print "Enter score: "
newscore = Integer gets
if newscore > hiscore and newscore <= maxscore 
  hiscore = newscore
  print "#{hiscore} new high score!\n"
elsif newscore == hiscore; print "So close!\n"
else print "Your score: #{newscore}\n"
end

# This is also acceptable syntax:
a, b = true, false
if a or b then print "Then\n" end
print "Yoda\n" if a
if !(b); print "C++ mutant\n" end

# Demonstration of ternary-operator:
print "Type a number: "
n = Integer gets
sign = (n >= 0) ? "Positive" : "Negative"
print sign + "\n"

# case-statements:
print "What range do you want? (num, alpha, string): "
r_type = gets.chomp # Gets includes newline at end, .chomp removes it.
rnge = case r_type
  when "num"
    (0..10).to_a
  when "alpha"
    ('a'..'j').to_a
  when "string"
    ("hi_1".."hi_11").to_a
  else
    []
end
print rnge
