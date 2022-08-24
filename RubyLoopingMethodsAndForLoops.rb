#!/usr/bin/ruby 

# RUBY LOOPING METHODS & FOR-LOOPS:

# Ruby for loops iterate through ranges:
for i in 1..10 do print i.to_s(2) end # do is required only on inline code.

# Nesting and breaks:
print "\nEnter a number: "
m = Integer gets
maxchars, ascii_offset = 26, 96
charset = ('a'..'z').reject {|chars| chars.ord > m + ascii_offset}
for i in 1..m
  break if m > maxchars
  print "#{i}: "
  for c in charset # Using char-range.
    print c, " " # This inserts a space after the character.
  end
  print "\n"
end

# Times method:
m.times {|i| print i * 11, " "}
print "\n"
m.times do print "*_" end
print "\n"

# Upto method:
1.upto(m) {|i| if i % 2 == 0 then print i, " " end}
print "\n"

# Downto method:
m.downto(1) {|i| unless i % 2 == 0 then print i, " " end}
print "\n"

