# nthFibonacci

# A Fibonacci sequence is a list of numbers that begins with 0 and 1, and each
# subsequent number is the sum of the previous two.

# For example, the first seven Fibonacci numbers are: 0 1 1 2 3 5 8

# Write a method that will return the nth number of the sequence.

# The syntax is easy, getting your head around the algorithm is the challenge.
# Write the sequence on a piece of paper first and think about the steps
# you take for each number. Translate this to pseudocode and then to ruby.

# Difficulty:
# 6/10

# Example:
# nthFibonacci(0) -> 0
# nthFibonacci(3) -> 2
# nthFibonacci(6) -> 8

# Check your solution by running the tests:
# ruby tests/13_fibonacci_test.rb


# Hacky recursion
# def nthFibonacci(n, fibonacci = [0, 1])
#   if fibonacci.length - 1 < n
#     fibonacci << fibonacci[-1] + fibonacci[-2]
#     nthFibonacci(n, fibonacci)
#   end
#   return fibonacci[n]
# end

# Robust to large, large numbers. Limited to roughly n = 1 million.
def nthFibonacci(n)
  if n <= 1
    return n
  end
  sequence = [0, 1]
  (n - 1).times do
    sequence << sequence[0] + sequence[1]
    # puts sequence[-1]
    sequence.shift
    # puts sequence
  end
  
  return sequence[1]
end

puts nthFibonacci(1000000)