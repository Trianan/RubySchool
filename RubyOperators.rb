#!/usr/bin/ruby 

# RUBY OPERATORS:

# Arithmetical operators:
print "
  2 + 3  = #{2 + 3}
  2 - 3  = #{2 - 3}
  2 * 3  = #{2 * 3}
  2 / 3  = #{2.0 / 3} (this is truncated if no float operands)
  2 % 3  = #{2 % 3}
  2 ** 3 = #{2 ** 3}\n"

# Assignment operators:
a, b = 2, 3
print "
  a = #{a}, b = #{b}
  a += b = #{a += b}
  a += b = #{a += b}
  a -= b = #{a -= b}
  a /= b = #{a /= Float (b)}
  a *= b = #{a *= b}
  a %= b = #{a %= b}
  a **= b = #{a **= b}\n"
  # Fun little parallel-assignment variable swap:
  print "\na = #{a}, b = #{b}"
  a, b = b, a
  print "\na = #{a}, b = #{b}\n"

# Comparison operators:
a, b, c = 1, 2, 2
print "
  a = #{a}, b = #{b}, c = #{c}
  a == b: #{a == b}
  b.eql?(c): #{b.eql?(c)}
  a != b: #{a != b}
  a < b: #{a < b}
  a > b: #{a > b}
  b >= c: #{b >= c}
  a <= b: #{a <= b}
  a <=> b: #{a <=> b}
  b <=> c: #{b <=> c}
  b <=> a: #{b <=> a}\n"

# Bitwise operators:
a, b = 0b00001000, 0b00000011
print "
  a = #{a.to_s(2)}, b = #{b.to_s(2)}
  ~ a = #{(~a).to_s(2)}
  a | b = #{(a | b).to_s(2)}
  a & b = #{(a & b).to_s(2)}
  a ^ b = #{(a ^ b).to_s(2)}
  a << b = #{(a << 1).to_s(2)}
  a >> b = #{(a >> 1).to_s(2)}\n"
