# Group by owners
# Implement a group_by_owners function that:
# Accepts a hash containing the file owner name for each file name.
# Returns a hash containing an array of file names for each owner name, in any order.

# Example: 
# group_by_owners({'Input.txt' => 'Randy', 'Code.py' => 'Stan', 'Output.txt' => 'Randy'}
# should return {'Randy' => ['Input.txt', 'Output.txt'], 'Stan' => ['Code.py']}

# Have a look at the tests and take note of the different expect assertions used.
# Using these assertions allows testing without expecting a particular order of the files
# in the lists for each owner.

def group_by_owners(ungrouped_files)
  files_grouped_by_owners = {}
  for file, owner in ungrouped_files
    if files_grouped_by_owners.has_key?(owner)
      files_grouped_by_owners[owner] << file
    else
      files_grouped_by_owners[owner] = [file]
    end
  end
  files_grouped_by_owners
end