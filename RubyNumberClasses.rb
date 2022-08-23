#!/usr/bin/ruby 

# RUBY NUMBER CLASSES:

n = 3.14 # Conversions from float:
print "\n#{n} => Int: #{Integer n}, String: #{String n}, Rational: #{Rational n}\n"

# Hexadecimal and octal numbers can be converted into ints directly:
hex, oct, bin = 0xA4F5D, 01231, 0b11011101 
print "
#{hex.to_s(16)} (HEXADECIMAL) = #{Integer hex},
#{oct.to_s(8)} (OCTAL) = #{Integer oct},
#{bin.to_s(2)} (BINARY) = #{Integer bin}\n"
  
# Conversions from string:
s = "42" 
print "\n'#{s}' => Int: #{Integer s}, Float: #{Float s}\n"

# Converting a character to its ASCII code:
char = "$"
print "\n#{char}'s ASCII code is: #{char.getbyte(0)}\n"


