# Count Letters

# Write a method that will take a string, keep count
# of each letter and return the totals as a hash.

# Example:
# count_letters("hello") should return {"h"=>1, "e"=>1, "l"=>2, "o"=>1}
# count_letters("mississippi") should return {"m"=>1, "i"=>4, "s"=>4, "p"=>2}

# Check your solution by running the tests:
# ruby tests/08_count_letters_test.rb

def count_letters(string)
  result = {} # Initialise empty hash
  for i in (0...string.length) # Runs this loop once for every character in the given string
    character = string[i] # Assigns one character to run comparisons on
    if result[character] == nil # If there's no entry in our hash, create one that corresponds to the character being compared
      result[character] = 1
    else # Otherwise, increment corresponding hash entry.
      result[character] += 1
    end
  end
  return result
end