#!/usr/bin/ruby 

# Methods and objects defined by me for reuse throughout the tutorial:

def print_strings(*strings) 
  vars = ('a'..'z').to_a
  for i in 0...strings.size
    print "\t#{vars[i]} = #{strings[i]}\n"
  end
  print "\n"
end