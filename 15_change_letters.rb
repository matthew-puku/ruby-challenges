# Write a program which will ask users for a string input.
# The program should display the input unless, it contains the letter 's'.

# If 's' is included change the output so that it will be 'th' instead.

# Examples:
# input = say hi
# output = thay hi

# input = mississippi
# output = miththiththippi

# Hint:
# Look up String on Ruby docs to help.

# Check your solution by running:
# ruby 15_change_letters.rb

# def lisp(string)

#     output = [] # Initialise empty array for addition later
#     letters = string.chars # Break string into an array of letters
#     for letter in letters
#         if letter == "s"
#             output << "th"
#         else
#             output << letter
#         end
#     end
#     return output.join("")
# end

def lisp(string)
    letters = string.chars
    letters.each_with_index { |letter, i| letters[i] = "th" if letter == "s"}
    return letters.join("")
end

# puts lisp("mississippi")
# puts lisp("say hi")

puts "Please type a message."
puts lisp(gets.chomp.downcase)