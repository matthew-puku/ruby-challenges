# FizzBuzz

# Don't look this one up until you complete it yourself!
# It's a common interview question and there will be plenty
# of spoilers on the interwebs.

# Difficulty:
# 4/10

# This is a trivial question with many simple solutions.
# Try to write the least amount of code as possible.

# Write a program that prints the numbers from 1 to 100.
# But for multiples of three print “Fizz” instead of the
# number and for the multiples of five print “Buzz”. For
# numbers which are multiples of both three and five
# print “FizzBuzz”.

# Check your solution by running: ruby 11_fizzbuzz.rb

# Example:
# 1
# 2
# Fizz
# 4
# Buzz
# ...etc

# Your code here

def fizzbuzz(number)
    if number % 15 == 0
        return "FizzBuzz"
    elsif number % 3 == 0
        return "Fizz"
    elsif number % 5 == 0
        return "Buzz"
    else
        return number.to_s
    end
end

for i in (0..10000)
    puts fizzbuzz(i)
end