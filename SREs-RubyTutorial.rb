#!/usr/bin/ruby
print "Hello World!\n"
print "Goodbye World!\n"

# Single line comment.
=begin 
    Multi
        Line
            Comment.
=end

THISISACONSTANT = "This is a constant! :)\n"
print THISISACONSTANT
THISISACONSTANT = "This constant was changed!\n" # Will allow but outputs warning.
print THISISACONSTANT

thisisavariable = 10
these, are, also, variables = 1, 2, 3, 4 # Parallel assignment is supported.
print "#{these}, #{are}, #{also}, #{variables}\n"
also, variables = "Woo!", true 
print "#{these}, #{are}, #{also}, #{variables}\n" # Reassignment to different types.

print "#{thisisavariable.is_a? Integer}, (#{thisisavariable.class}) " # Testing for type; should be true and an Integer.
thisisavariable = "a"
print "#{thisisavariable.is_a? Integer}, (#{thisisavariable.class})\n" # Should now be false and String.

thisisavariable = 10
# Converts variable to floating-point number, string, string in binary, and string in hex.
print "#{thisisavariable}, 
    #{thisisavariable.to_f}, 
    #{thisisavariable.to_s}, 
    #{thisisavariable.to_s(2)}, 
    #{thisisavariable.to_s(16)}\n" 

# Naming conventions for variable-scoping.
$global = "This is a global variable."
@instance = "This is an instance variable."
local = "This is a local variable."
CONSTANT = "This is a constant."
@@class = "This is a class-variable." #Will throw warning here as not in class.
# defined? method detects variable scope.
print "$global is a: #{defined? $global}\n"
print "local is a: #{defined? local}\n"

=begin
  Pre-defined globals:
    $@  The location of latest error
    $_  The string last read by gets
    $.  The line number last read by interpreter
    $&  The string last matched by regexp
    $~  The last regexp match, as an array of subexpressions
    $n  The nth subexpression in the last match (same as $~[n])
    $=  The case-insensitivity flag
    $/  The input record separator
    $\  The output record separator
    $0  The name of the ruby script file currently executing
    $*  The command line arguments used to invoke the script
    $$  The Ruby interpreter's process ID
    $?  The exit status of last executed child process
=end
print "
  #{$@}\n
  #{$_}\n
  #{$.}\n
  #{$&}\n
  #{$~}\n
  #{$1}\n
  #{$=}\n
  #{$/}\n
  #{$\}\n
  #{$0}\n
  #{$*}\n
  #{$$}\n
  #{$?}\n
  "

gets # Gets input from terminal, which is accesed through $_
print $_

# Ruby Number Classes:
n = 3.14 # Floating point number.
print "#{Integer n}\n"
print "#{String n}\n"