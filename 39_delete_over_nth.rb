# Delete over nth
# In this challenge, you are given an array of numbers and a number(n)
# If a number in the array occurs more than n times, you should delete all occurrances of
# that number after the nth occurrance (without changing the order of the numbers)

# Example:
# delete_over_nth([1,1,1,2,2,2,2],2) => [1,1,2,2]
# delete_over_nth([23,30,15,23,16],1) => [23,30,15,16]

def delete_over_nth(list, max_count)
  numbercounter = {}

  i = 0
  while i < list.size
    key = list[i].to_s
    if numbercounter[key] == nil
      numbercounter[key] = 1
      i += 1
    elsif numbercounter[key] >= max_count
      list.delete_at(i)
    else
      numbercounter[key] += 1
      i += 1
    end
  end

  list
end