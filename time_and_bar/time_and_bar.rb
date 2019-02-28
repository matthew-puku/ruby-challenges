require "./drink_and_bar" # run from the same directory as drink_and_bar or this program will not function, lol

# PART 1:
# - Create a well named variable that contains the amount of time it took you to get to class
# - Create a complete sentence  that lets us know how you got to class and how long it took
# - Print this complete sentence

travel_time_to_class = "8m"
travel_story = "I get to class by walking. The distance is quite short. Today, it took #{travel_time_to_class}."
puts travel_story

# PART 2:
# You are working at a bar where you have a current backlog of drinks to make:
# 3 cocktails
# 2 waters
# and
# 6 beers
# Cocktails sell for $22, and cost $8 to make
# Waters sell for $6, and cost $0.15 to make
# Beers sell for $12, and cost $3 to pour

bar = Bar.new([
    Drink.new("Cocktail", 3, 22, 8),
    Drink.new("Water", 2, 6, 0.15),
    Drink.new("Beer", 6, 12, 3),
    Drink.new("Rum", 0, 20, 6)]) # The main benefit of this overengineering is the ease of adding new items to the menu.

# Write a program that asks the customer for their order.
#   if they order a drink, add one to the number of drinks you need to make,

order_acknowledged = "Got it." # Storing this in a variable to streamline future changes. If I change my mind about how to acknowledge orders, I can change it once instead of once for each drink.

looping = true
while looping
    puts "#{bar.display_menu}or type (d)one when finished."
    input = gets.chomp.downcase
    system "clear"
    case bar.search_and_order!(input, 1)
    when true # executes if bar found and ordered a drink
        puts order_acknowledged
    when nil # executes if bar could not find matching drink
        case input
        when "exit", "quit", "e", "q", "ZZ", "end", "done", "d", "stop"
            looping = false
        else
            puts "Invalid input. Try again, please."
        end
    else # for debugging purposes only, should not execute.
        puts "MEGABUG. This really shouldn't be able to happen."
    end
end

# Print the final drinks order so you know what to make
system "clear"
puts "Cool. Final order:"
bar.display_all_orders

# Part Three:
# Print out the total profit for the orders you have

puts "The total profit for all orders is $#{"%.2f" % bar.total_profit}" # running "%.2f" % on a number will turn it into a floating point number with 2 decimal places