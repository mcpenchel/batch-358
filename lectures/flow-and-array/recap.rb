# Basic types we learned

require 'date'

3    # Integer
3.14 # Float
[]     # Array
[1, 2] # Array
(1..10)  # Range
(1...10) # Range without including the last element
'A string' # String -
"A string" # String - we can use string interpolation "#{}"
true  # Boolean value
false # Boolean value
Date.new(year, month, day) # Date

# Variables

# Whenever we need to re-use them,
# for example:

# As Parameters / Arguments
# For storing user input (from gets.chomp)

puts "What's your age?"
age = gets.chomp.to_i

# Methods

# Similar to functions
# Very useful to not repeat yourself (DRY)

# Optional parameters

name = "Matt"
last_name = "Penchel"

def full_name(param_1="Matt", param_2="Penchel")
  return "#{param_1} #{param_2}"
end

full_name
