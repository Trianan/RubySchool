#!/usr/bin/ruby 

# RUBY VARIABLES & SCOPE:

thisisavariable = 10
these, are, also, variables = 1, 2, 3, 4 # Parallel assignment is supported.
print "#{these}, #{are}, #{also}, #{variables}\n" # Variables can be directly inserted into strings.
also, variables = "Woo!", true # Parallel reassignment to different types.
print "#{these}, #{are}, #{also}, #{variables}\n"

print "#{thisisavariable.is_a? Integer}, (#{thisisavariable.class}) " # Testing for type; should be true and an Integer.
thisisavariable = "a"
print "#{thisisavariable.is_a? Integer}, (#{thisisavariable.class})\n" # Should now be false and String.

# Converts variable to floating-point number, string, string in binary, and string in hex:
thisisavariable = 10
print "
  #{thisisavariable}, 
  #{thisisavariable.to_f}, 
  #{thisisavariable.to_s}, 
  #{thisisavariable.to_s(2)}, 
  #{thisisavariable.to_s(16)}\n" 

# Naming conventions for variable-scoping:
$global = "This is a global variable. (You usually shouldn't use this!)"
local = "This is a local variable. It applies to the scope it is defined in only."
CONSTANT = "This is a constant. It should not (but can be) changed." # Will throw a warning if changed.

# defined? method detects variable scope:
print "$global is a: #{defined? $global}\n"
print "local is a: #{defined? local}\n"
print "@instance is a: #{defined? @instance}\n"
print "CONSTANT is a: #{defined? CONSTANT}\n"
print "@@class is a: #{defined? @@class}\n"

# Demonstration of changing-constant warning:
THISISACONSTANT = "This is a constant! :)\n"
print THISISACONSTANT
THISISACONSTANT = "This constant was changed! :(\n" # Will allow but outputs warning.
print THISISACONSTANT

# Predefined global variables in Ruby:
print "
  The location of latest error: #{$@}\n
  The string last read by gets: #{$_}\n
  The line number last read by interpreter: #{$.}\n
  The string last matched by regexp: #{$&}\n
  The last regexp match, as an array of subexpressions: #{$~}\n
  The nth subexpression in the last match (same as $~[n]): #{$1}\n
  The case-insensitivity flag: #{$=}\n
  The input record separator: #{$/}\n
  The output record separator: #{$\}\n
  The name of the ruby script file currently executing: #{$0}\n
  The command line arguments used to invoke the script: #{$*}\n
  The Ruby interpreter's process ID: #{$$}\n
  The exit status of last executed child process: #{$?}\n
  "
# Using one of these globals:
print "Type some input: "
gets # Gets input from terminal, which is accesed through $_
print "Your input was: #{$_}\n"