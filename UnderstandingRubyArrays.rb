#!/usr/bin/ruby 

# UNDERSTANDING RUBY ARRAYS:

# Creating an empty array with a specified size:
nihlist = Array.new(10)
print "\n#{nihlist.empty?}, #{nihlist}\n"

# Creating and initializing arrays:
shopping_list = Array.new(20, "banana")
print "\n#{shopping_list}\n"

todo = ["sleep", "eat", "repeat"]
print "\n#{todo}\n"

# Array methods:
print "\n#{shopping_list.size}\n" # Size of array.

# Accessing individual elements by index.
dates = ['Mon', 1, 'Tues', 2, 'Wed', 3, 3]
print "\n#{dates[0].class}, #{dates[3].class}, #{dates[-1].class}\n"

# Getting index of first-matching and last-matching element:
print "\n#{dates.index(3)}, #{dates.rindex(3)}\n"

# Getting subset from an array:
print "\n#{dates[0, 5]},\n or #{dates[0..4]},\n or #{dates.slice(0..4)}\n"

