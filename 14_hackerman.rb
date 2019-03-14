# You have to stop the infamous hackerman by writing a basic security program.

# Your task is to write a program which will ask the user for input twice.
# Both times should ask the user to type words and will display the FIRST input.

# However if any of the words in the second input match with a word from the
# first input it should say "HIDDEN" instead of the matched word.

# Example:
# first_input = bob rob dob mob
# second_input = kob fob dob

# output = bob rob HIDDEN mob

# Check your solution by running:
# ruby 14_hackerman.rb

# Beast mode:
# Does your code deal with capital letters? Update your solution so that
# they will be downsized if they are input but HIDDEN remains capitalised.

def grabinput # gets input in a "secure" way
    puts "Please type some words."
    input = gets.chomp.downcase
    system("clear") # clear for "security" purposes
    return input
end

def protect_vs_hackerman(first_input, second_input)
    # Turn input strings into arrays so we can compare word by word.
    first_input = first_input.downcase.split(" ")
    second_input = second_input.downcase.split(" ")
   
    # Initialise empty array to be populated by first_input
    output = []
    
    # Iterates over every word in first_input
    for word in first_input
        # If the word matches with one in second_input, append "HIDDEN" to the output.
        if second_input.include? word
            output << "HIDDEN"
        # If no match, it just appends the word it's checking.
        else
            output << word
        end
    end
    
    # Turn the output back from an array to a string
    return output.join(" ")
end

first_input = grabinput
second_input = grabinput

puts protect_vs_hackerman(first_input, second_input)