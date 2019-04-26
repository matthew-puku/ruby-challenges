# Interesting number

# An interesting number is one with at least 3 digits,
# in which the digits are either incrementing or decrementing.

# Examples:
# interesting_number(789) => true
# interesting_number(321) => true
# interesting_number(798) => false
# interesting_number(6) => false
# interesting_number(23) => false

# When the digits are incrementing, 0 comes after 9:
# interesting_number(7890) => true
# When the digits are decrementing, 0 comes after 1:
# interesting_number(3210) => true

def interesting_number(number)
  digits = number.digits

  return false if digits.size < 3

  number_could_be_incrementing = true
  number_could_be_decrementing = true

  (0...digits.size - 1).each do |i|
    number_could_be_decrementing = false unless (digits[i] + 1) % 10 == digits[i + 1]
    number_could_be_incrementing = false unless (digits[i] - 1) % 10 == digits[i + 1]
  end

  return number_could_be_incrementing || number_could_be_decrementing
end

# puts interesting_number(789) # => true
# puts interesting_number(321) # => true
# puts interesting_number(798) # => false
# puts interesting_number(6) # => false
# puts interesting_number(23) # => false
# puts interesting_number(7890) # => true
# puts interesting_number(3210) # => true