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



# Your code here

def grabinput # gets input and splits it into an array for comparison purposes
    puts "Please type some words."
    input = gets.chomp.downcase
    system("clear") # clear for security purposes
    words = input.downcase.split(" ")
    return words
end

def protect_vs_hackerman(first_input, second_input)
    output = []
    for word in first_input
        if second_input.include? word
            output << "HIDDEN"
        else
            output << word
        end
    end
    return output
end


# Beast mode:
# Does your code deal with capital letters? Update your solution so that
# they will be downsized if they are input but HIDDEN remains capitalised.

# first_input = "bob rob dob mob".split(" ")
# second_input = "kob fob dob".split(" ")

first_input = grabinput
second_input = grabinput



puts protect_vs_hackerman(first_input, second_input).join(" ")