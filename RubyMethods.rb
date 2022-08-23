#!/usr/bin/ruby 

# RUBY METHODS:

# Declaring a method 'f' with 'x' as a parameter:
def f(x)
    return ((x+2)*(x-1))
end
# Calling 'f' with some arguments passed to it.
print "\nF(-2) = #{f(-2)}\nF(1) = #{f(1)}\nF(14) = #{f(14)}\n"

# Declaring a method that accepts a variable number of parameters:
def print_to_base(n, *args)
    print "\n"
    args.each {|x| print "#{x} = #{x.to_s(n)}\n"}
end
print_to_base(2, 1, 2, 3, 4, 5)
print_to_base(16, 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100)

# Methods can be aliased:
alias g f
print "\nG(-2) = #{g(-2)}\nG(1) = #{g(1)}\nG(14) = #{g(14)}\n"