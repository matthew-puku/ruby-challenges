# Number pyramid
# Number pyramid is a recursive structure where each next row is constructed by adding adjacent values of the current row. For example:

# Row 1     [1     2     3     4]
# Row 2        [3     5     7]
# Row 3           [8    12]
# Row 4             [20]
# Task
# Given the first row of the number pyramid, find the value stored in its last row.

# Examples
# reduce_pyramid([1])        ==  1
# reduce_pyramid([3, 5])     ==  8
# reduce_pyramid([3, 9, 4])  ==  25

def reduce_pyramid(row)
  case row.size
  when 0 # Empty pyramid
    return 0
  when 1 # The pyramid has finished reducing
    return row[0] 
  else   # The pyrmaid needs further reduction
    next_row = []
    
    # Populate next_row by adding adjacent values in row
    i = 1
    while i < row.size
      next_row << row[i] + row[i - 1]
      i += 1
    end

    return reduce_pyramid(next_row)
  end
end