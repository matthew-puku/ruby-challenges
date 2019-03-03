# Included Once
#
# Write a method that takes an array and a string. Return
# true if the string is found in the array only once.
# Otherwise return false.
#
# What's the time complexity of your solution? Can it be improved?
#
# *** Whiteboard this first ***
#
# Difficulty: 4/10
#
# Example:
# includedOnce(['hello','hi','hi'], 'hi') -> false
# includedOnce(['hello','hi','hey'], 'hi') -> true
#
# Check your solution by running the tests:
# ruby tests/07_included_once_test.rb
#

def included_once (haystack, needle)
  counter = 0
  for target in haystack do
    if target == needle
      counter += 1
    end
  end
  if counter == 1
    return true
  else
    return false
  end
end
