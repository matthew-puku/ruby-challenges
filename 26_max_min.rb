# Max Min In String

# There are plenty of incredible array methods built into 
# ruby that allow us to compare and run calculations on 
# arrays full of numbers. Sometimes, we don't receive these 
# numbers in an array, and instead receive it as a string of 
# space seperated numbers.

# Write a method that will take a string of space seperated 
# numbers as input, and return the highest and lowest number 
# from this string.

# *E.g.* max_min_in_string("5 2 9 8 23 1") should return "23 1"
# *E.g.* max_min_in_string("15 4 4 38 -9") should return "38 -9"

# Write your own test file for this challenge using Test::Unit


def max_min(num_string)
  numbers = num_string.split(" ")
  
  first_number = numbers[0].to_i
  smallest_number = first_number
  largest_number = first_number
  
  i = 1
  while i < numbers.length
    number = numbers[i].to_i
    if number < smallest_number
      smallest_number = number
    elsif number > largest_number
      largest_number = number
    end
    i += 1
  end
  
  "#{largest_number} #{smallest_number}"
end

puts max_min("5 2 9 8 23 1") # should return "23 1"
puts max_min("15 4 4 38 -9") # should return "38 -9"