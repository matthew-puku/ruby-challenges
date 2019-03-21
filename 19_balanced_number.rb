
# A balanced number is the number that the sum of all digits to the left of the middle digit(s) 
# and the sum of all digits to the right of the middle digit(s) are equal.

# If the number has an odd number of digits then there is only one middle digit, 
# e.g. 92645 has middle digit 6; otherwise, there are two middle digits , 
# e.g. 1301 has middle digits 3 and 0

# The middle digit(s) should not be considered when determining whether a 
# number is balanced or not, e.g 413023 is a balanced number because the 
# left sum and right sum are both 5 ('30' are the middle digits).

# Number passed is always positive.

# Return a string "Balanced" or "Not Balanced"

# Examples


# balancedNum(7) 
# => "Balanced"
# Explanation:
# Since, the sum of all digits to the left of the middle digit (0) 
# and the sum of all digits to the right of the middle digit (0) are equal, then it's balanced.
# Note: The middle digit is 7.


# balancedNum(295591) 
# => "Not Balanced"
# Explanation:

# Since, the sum of all digits to the left of the middle digits (11) 
# and the sum of all digits to the right of the middle digits (10) are equal, then it's not balanced.
# Note: The middle digit(s) are 55.

# balancedNum(959)
# => "Balanced"
#Explanation:
# Since, the sum of all digits to the left of the middle digits (9) 
# and the sum of all digits to the right of the middle digits (9) are equal, then it's balanced.
# Note: The middle digit is 5.

# balancedNum(27102983) 
# => "Not Balanced"
# Explanation:
# Since, the sum of all digits to the left of the middle digits (10) 
# and the sum of all digits to the right of the middle digits (20) are equal, then it's not balanced.
# Note : The middle digit(s) are 02.

def balanced_num(number)
    digits = number.to_s.chars
    
    # Initialises a variable so we can get the correct number of digits.
    if digits.length.even?
        digits_to_omit = 1
    else
        digits_to_omit = 0
    end
    left_digits = digits[0, digits.length / 2 - digits_to_omit]
    right_digits = digits.reverse[0, digits.length / 2 - digits_to_omit]
    # If there's an even number of digits, each array will omit one digit each
    # If there's an odd number, both arrays will omit the same digit

    # Add the left and right arrays together
    sum_of_left_digits = 0
    sum_of_right_digits = 0
    for digit in left_digits
        sum_of_left_digits += digit.to_i
    end
    for digit in right_digits
        sum_of_right_digits += digit.to_i
    end

    if sum_of_left_digits == sum_of_right_digits
        return "Balanced"
    else
        return "Not Balanced"
    end
end