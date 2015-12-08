#

def make_acct_groups (names)
  #input: arr of names
  #output: array of arrays of names
  #pseudo-code:
    # shuffle names up
  # Create acct_groups, an empty array, with the default value []

  # set i to 0
  # LOOP through names
    #  if acct_groups (group atindex i) contains more than 4 or ( group at index i contains more than 2 and only 3 names remain in names array)
      # make a new array in acct_groups
      #i = i +1
    #  end if
    # add name to acct_group (group_at_index_i)
  # END LOOP

  #Return acct_groups
  #First code
  names.shuffle!
    acct_groups =[[]]
  i =0
  names.each_with_index do |name, index|
    if acct_groups[i].count >4 || ( names.count - index == 3 && acct_groups[i].count >1 )
      acct_groups << []
      i += 1
    end
    acct_groups[i] << name
  end
  acct_groups
end

  make_acct_groups (["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o"])
# make_acct_groups(12 names)
