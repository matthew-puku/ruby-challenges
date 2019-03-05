# Vowels

# Write a method that will take a string and
# return an array of vowels used in that string.

# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]

# Check your solution by running the tests:
# ruby tests/09_vowels_test.rb

def vowels(string)
  # initialise arrays
  output = []
  vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  for i in (0...string.length) # Runs this loop once for every character in the given string
    character = string[i] # Assigns one character to run comparisons on
    if vowels.include?(character) # If the character is in the list of vowels...
      output << character # ...add it to the output array
    end
  end
  return output
end

puts vowels("The quick brown fox")

