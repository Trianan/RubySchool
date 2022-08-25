#!/usr/bin/ruby 

require '.\Helpers.rb'

# RUBY STRING CONCATENATION & COMPARISON:

# Concatenation methods:
a = "Bat"+'man'
b = "Spider" 'man'
c = 'Super' << "man"
d = "Mail".concat("man")
print_strings(a, b, c, d)

# Freezing a string:
freezed_string = "ABC" + "DEF" << "GHI" 'JKL'.concat('MNO') + "\n"
print freezed_string
freezed_string.freeze
#freezed_string.concat('PQR') # This will throw a FrozenError, if uncommented.

# Accessing fragments of a string with a substring:
a = "1234567890"
b = a["567"] # This sequence should print because it exists in string.
c = a["184"] # The next two should show nothing.
d = a["abc"]
print_strings(a, b, c, d)

# Accessing individual characters by location (returns ASCII code).
a = %(!@$%^&*?<>|+=) 
b = "#{a[7]}" # (This printed the actual character...newer Ruby feature?)
c = b.chr # Converts ASCII code to actual character.
d = a[2, 6] # Returns substring starting at index 2 and 6 chars long.
e = a[0..3] # Same as above, using ranges instead.
f = "#{a.index('<>|+=')}" # Returns index of first char of substring.
print_strings(a, b, c, d, e, f)

# Comparison operators:
a = "Jimothy"
b = "jimothy"
c = "Ted"
d = "Zed"
print "
  #{a} == #{b} -> #{a == b} Strict comparison.
  #{a}.eql? #{b} -> #{a.eql? b} ...
  #{c} <=> #{d} -> #{c <=> d} Alphabetical comparison.
  #{a}.casecmp #{b} -> #{a.casecmp b} Case-insensitive comparison.
" # .casecmp returns the same range of values as <=>
