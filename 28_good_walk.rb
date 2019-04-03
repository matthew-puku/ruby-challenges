# Good walk
# Difficulty: medium/hard

# You live in the city of Cartesia where all roads are laid out in a perfect grid. 
# You arrived ten minutes too early to an appointment, so you decided to take the 
# opportunity to go for a short walk. 

# The city provides its citizens with a Walk Generating App on their phones -- 
# everytime you press the button it sends you an array of one-letter strings 
# representing directions to walk (eg. ['n', 's', 'w', 'e']). Y
# ou always walk only a single block in a direction and you know it takes 
# you one minute to traverse one city block, so create a function that will 
# return true if the walk the app gives you will take you exactly ten minutes 
# (you don't want to be early or late!) and will, of course, return you to your starting point. 
# Return false otherwise.

# Rails uses rspec for testing by default
# rspec is automatically installed with Rails, but if you haven't installed Rails yet,
# you'll have to install it to use the tests included for this morning challenge:
#    sudo gem install rspec

# Then run the tests by just running:
#   rspec

# rspec uses a convention that it will run any file in a subdirectory called 'spec' that
# has a file name ending in _spec.rb

# Stupid oneliner.
def good_walk(walk)
  walk.count("n") == walk.count("s") && walk.count("w") == walk.count("e") && walk.size == 10
end

# More informative.
def good_walk(walk)
  # Initialise position as an x, y coordinate.
  my_position = [0, 0]

  # Initialise time as an integer, measured in minutes.
  walk_length = 0
  
  # Increase time and update position based on direction given.
  walk.each do |direction|
    walk_length += 1
    case direction
    when "w"
      my_position[0] += 1
    when "e"
      my_position[0] -= 1
    when "n"
      my_position[1] += 1
    when "s"
      my_position[1] -= 1
    end
  end

  # Check we ended up where we started and that we took exactly 10 minutes.
  my_position == [0, 0] && walk_length == 10
end