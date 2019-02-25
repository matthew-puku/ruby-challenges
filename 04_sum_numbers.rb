# Sum Numbers

# Write a method that will take an array of numbers,
# and return their sum.

# Example:
# sum_numbers([1,1,1]) should return 3
# sum_numbers([5,2,100,0,10]) should return 117

# Check your solution by running the tests:
# ruby tests/04_sum_numbers_test.rb

def sum_numbers (numbers)
  if numbers.class != Array # check correct datatype was passed
    raise TypeError.new("sum_numbers expected array, recieved #{numbers.class}.")
  end
  sum = 0
  for number in numbers # check each value in array for correct datatype and add it to the total.
    if number.class.superclass != Numeric
      raise TypeError.new("sum_numbers passed non-Numeric value in array, #{number.class}, #{number}")
    end
    sum += number
  end
  return sum
end

# OPTIONAL:
# Go to the tests folder and open 04_sum_numbers_test.rb.
# Read over the tests and see if you can understand them.

# Try add at least three more tests, and test at least 2 corner cases.

# Hint:
# You could test what happens when you call sum_numbers([])?
