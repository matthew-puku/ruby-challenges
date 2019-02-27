# Write a program that accepts someone's name and age, and responds
# as shown here:

# Program is run and outputs:
puts "What is your name?"

# User inputs: "Tom"
name = gets.chomp
# Program outputs:
puts "Hi #{name}! How old are you?"

# User inputs: 40
age = gets.chomp
while age.to_i == 0
    puts "uhh, try again. How old are you?"
    age = gets.chomp
end

# Program outputs:
puts "Wow! You are #{age} years old. Congratulations!"

# Beast mode challenge:
# Ater the above, the program calculates how many years until
# the user is 100 years old and tells the user. For example, for
# our user input above (Tom and 40), after outputing 
# "Wow! You are 40 years old. Congratulations!"
# The program also outputs:
# "Tom, in 60 years you will be 100 years old!"
puts "Tom, in #{100 - age.to_i} years you will be 100 years old!"