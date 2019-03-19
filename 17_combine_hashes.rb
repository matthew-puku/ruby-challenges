# Combine Hashes

# Write a method which will take two different hashes and will
# return their combined value in a new hash.

# If the hash contains numbers, the numbers for matching keys should
# be added and the sum stored in the combined hash

# If the hash contains strings, the strings for matching keys should
# be concatenated and the result stored in the combined hash

# Example:
# hash1 = { a: 3, b: 5, c: 1}
# hash2 = { a: 5, b: 2, c: 14}
# combine_hashes => { a: 8, b: 7, c: 15 }

# Example: 
# hash1 = {a: "a", b:"b", c:"c"}
# hash2 = {a: "a", b:"b", c:"c"}
# combine_hashes => {a: "aa", b:"bb", c:"cc"}



# Test your solution with ruby tests/17_combine_hashes.rb

def combine_hashes(hash1, hash2) # Please pass in homogenous hashes only.
  combined_hash = {}

  # First pass, adds hashes together AND grabs solo elements from the first hash.
  for key in hash1.keys 
    if hash2[key] == nil
        combined_hash[key] = hash1[key]
    else
        combined_hash[key] = hash1[key] + hash2[key]
    end
  end

  # Second pass, grabs elements that are only in hash 2.
  for key in hash2.keys
    if hash1[key] == nil
      combined_hash[key] = hash2[key]
    end
  end
  return combined_hash
end