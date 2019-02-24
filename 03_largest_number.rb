# Write a method that will take two numbers,
# and return whichever is the largest.
#
# Example:
# largest_number(100,50) should return 100
# largest_number(10,20) should return 20
#
# Check your solution by filling in the folowing table:
# number_1 || number_2 || expected || actual
# 
# If your stuck try working together

def largest_number (number_1, number_2)
  a = [number_1, number_2]
  return a.sort[-1]
end

puts largest_number(100,50)
puts largest_number(45,50)
puts largest_number(1,1)

# Beast Mode:
# If you complete the challenge, feel free to come up
# with your own examples and test corner cases.
# 
# Examples - what if both numbers are equal or are strings?

def largest_number_beast (number_1, number_2)
  if number_1 == number_2
    puts "The numbers you entered (#{number_1} and #{number_2}) are equal."
    return number_1
  else
    a = [number_1, number_2]
    return a.sort[-1]
  end
end

puts largest_number_beast(100,50)
puts largest_number_beast(4,50)
puts largest_number_beast(20,20)