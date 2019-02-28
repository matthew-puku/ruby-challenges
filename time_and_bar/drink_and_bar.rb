class Drink
    attr_reader :name, :ordered, :retail_price, :cost_of_sale
    
    def initialize(name, ordered, retail_price, cost_of_sale)
        @name = name # String. The name of the drink type, e.g. "Beers".
        @ordered = ordered # Integer. The number of orders pending for this drink.
        @retail_price = retail_price # Numeric. What the customer pays for the drink.
        @cost_of_sale = cost_of_sale # Numeric. What it costs the business to sell this drink.
    end
    def order!(quantity) # Increments @ordered. Returns self to allow method chaining.
        @ordered += quantity
        return self
    end
    def make!(quantity) # Decrements @ordered
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

class Bar
    attr_accessor :drinks
    
    def initialize(drinks)
        @drinks = drinks # An array of Drink objects
    end
    def order!(drink, quantity) # Calls a given drink's order method with given quantity.
        drink.order!(quantity)
    end
    def search_bar(input) # Finds a drink from the menu in @drinks based on the input string. If there's a full match, orders that, otherwise checks the first letter of every drink, otherwise returns nil.
        input = input.downcase
        ordered_drink = nil # Last resort, returned if no matches found.
        for drink in @drinks # Searches for first-letter matches.
            if input[0] == drink.name.downcase[0]
                ordered_drink = drink
            end
        end
        for drink in @drinks # Searches for whole-string matches. Overwrites single-letter match if found.
            if input == drink.name.downcase
                ordered_drink = drink
            end
        end
        return ordered_drink
    end
    def search_and_order!(input, quantity) # Uses above methods to search for a drink and order it. Returns true on success and nil on failure.
        drink = search_bar(input)
        if drink != nil
            order!(drink, quantity)
            return true
        else
            return nil
        end
    end
    def profit_of(drink) # Given a Drink object, returns the amount of profit for its total orders.
        return drink.total_profit
    end
    def total_profit # Returns the profit of every drink object in @drinks.
        total_profit = 0
        for drink in @drinks do
            total_profit += profit_of(drink)
        end
        return total_profit
    end
    def display_all_orders # Prints all outstanding orders.
        for drink in @drinks do
            puts "#{drink.ordered} #{drink.name}s"
        end
    end
    def display_menu # Formats @drinks into a nice string and returns it. Intended to be combined with an exit string.
        output = "What'll it be? To order, type "
        for drink in @drinks do # Downcases the name of each drink and puts parenthesis around the (f)irst (l)etter.
            name = drink.name.downcase
            output += "(#{name[0]})#{name[1,99]}, "
        end
        return output
    end
end