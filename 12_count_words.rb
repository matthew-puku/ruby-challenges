# Your challenge is to write a program which will ask the user for input.
# The code should then output the number of times words are used.

# Example:
# If the words 'hi hi Hi hello 1 1' are input, the result should be:
# hi 2
# Hi 1
# hello 1
# 1 2

# Test your solution by running 12_count_words


# Your code here
def count_words(input)
    words = input.split(" ") # breaks the string into an array of strings, separated by spaces.
    wordcounter = {} # initialise empty hash

    for word in words # iterate over each word in our array
        if wordcounter[word] == nil # if there's no entry in the hash...
            wordcounter[word] = 1 # make one
        else
            wordcounter[word] += 1 # if there already is one, increment it
        end
    end

    # iterate over the hash, printing each key (word) and value (count of that word) on a line.
    wordcounter.each do |word, count| 
        puts "#{word} #{count}"
    end
end

# puts "Enter some words"
# count_words(gets.chomp)

# Beast Mode:
# Change your code so that it doesn't matter if capital letters are used,
# In the above example the result should be:
# hi 3
# hello 1
# 1 2

def count_words_caseins(input)
    # the only difference from the previous method is that we downcase the user input here
    words = input.downcase.split(" ")
    wordcounter = {}
    for word in words
        if wordcounter[word] == nil
            wordcounter[word] = 1
        else
            wordcounter[word] += 1
        end
    end
    wordcounter.each do |word, count|
        puts "#{word} #{count}"
    end
end

puts "Enter some more words (case insensitive)"
count_words_caseins(gets.chomp)