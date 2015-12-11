#


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
# def make_acct_groups (names)
#   names.shuffle!
#     acct_groups =[[]]
#   i =0
#   names.each_with_index do |name, index|
#     if acct_groups[i].count >4 || ( names.count - index == 3 && acct_groups[i].count >1 )
#       acct_groups << []
#       i += 1
#     end
#     acct_groups[i] << name
#   end
#   acct_groups
# end
# Refactoring
def make_account_groups (names)
  names.shuffle!
  act_groups = names.each_slice(5).to_a
  while act_groups.last.count < 3 && act_groups.first.count >3
    act_groups.last << act_groups.first.pop
    act_groups.sort_by! { |group| -group.count }
 end
  act_groups
end

# DRIVER CODE:
# -----------
#
p make_account_groups(["Andy", "Brenda", "Christine", "Daniel", "Elaine", "Frank","George","Henry","Ivan","Jack","Karen","Luke","Matt","Nora","Oprah","Paul", "Rachel", "Samantha", "Todd", "Uma", "Van", "Wilma", "Yolanda", "Zelda"])


#Reflection
#What was the most interesting and most difficult part of this challenge?
# Splitting the groups into sizes greater than 2. It's probably the hardest problem all week

#Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Yeah, this one needed a lot of breaking down.

#Was your approach for automating this task a good solution? What could have made it even better?
# ultimately it should be object-oriented. With people as one object and each account group being another. My approach is good, but either instance variables or global variables are needed to adjust the groups. But that was ultimately way beyond what I wanted to do.

#What data structure did you decide to store the accountability groups in and why?
#Arrays, specifically arrays of arrays. I could used a hash of people's names and their group number, but that would be unwieldy, specifically with counting how many people were in a given group or moving people from one group to another. In addition, it would be difficult to return the names grouped together. Arrays of arrays are naturally grouped together.

#What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# each_slice is a powerful method. Also, that a certain amount of complexity is inevitable in this solution.
