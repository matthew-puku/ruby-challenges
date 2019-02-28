# There are three parts to this challenge and remember to push your solution.

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

class Drink
    attr_reader :name, :ordered, :retail_price, :cost_of_sale
    
    # Drink class tracks orders of a type of drink and returns useful information about it.

    def initialize(name, ordered, retail_price, cost_of_sale)
        @name = name # String. The name of the drink type, e.g. "Beers".
        @ordered = ordered # Integer. The number of orders pending for this drink.
        @retail_price = retail_price # Numeric. What the customer pays for the drink.
        @cost_of_sale = cost_of_sale # Numeric. What it costs the business to sell this drink.
    end
    def order(quantity) # Increments @ordered. Returns self to allow method chaining.
        @ordered += quantity
        return self
    end
    def make(quantity) # Decrements @ordered Returns self to allow method chaining.
        @ordered -= quantity
        return self
    end
    def profit_of(quantity) # Returns the profit earned from selling a given number of drinks
        profit = (@retail_price - @cost_of_sale) * quantity
        return profit
    end
    def total_profit # Returns the profit earned from selling the ordered number of drinks
        total_profit = self.profit_of(@ordered)
        return total_profit
    end
end

cocktails = Drink.new("Cocktails", 3, 22, 8)
waters = Drink.new("Waters", 2, 6, 0.15)
beers = Drink.new("Beers", 6, 12, 3)

orders = [cocktails, waters, beers]

order_acknowledged = "Got it." # Storing this in a variable to streamline future changes. If I change my mind about how to acknowledge orders, I can change it once instead of once for each drink.

# Write a program that asks the customer for their order.
#   if they order a drink, add one to the number of drinks you need to make,

looping = true
while looping
    puts "What'll it be? To order, type (c)ocktail, (w)ater, or (b)eer. Type (d)one when finished"
    input = gets.chomp.downcase
    system "clear"
    case input
    when "c", "cocktail"
        cocktails.order(1)
        puts order_acknowledged
    when "w", "water"
        waters.order(1)
        puts order_acknowledged
    when "b", "beer"
        beers.order(1)
        puts order_acknowledged
    when "exit", "quit", "e", "q", "ZZ", "end", "done", "d", "stop"
        looping = false
    else
        puts "Sorry, invalid input. Please try again."
    end
end

# Print the final drinks order so you know what to make
system "clear"
puts "Cool. Final order:"
for drink in orders do
    puts "#{drink.ordered} #{drink.name}"
end

# Part Three:
# Print out the total profit for the orders you have

total_profit = 0
for drink in orders do
    total_profit += drink.total_profit
end
puts "The total profit for all orders is $#{total_profit}"