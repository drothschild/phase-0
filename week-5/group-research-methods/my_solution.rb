# Research Methods

# I spent [1.5] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  # Find all the items n in source that have thing_to_find
  source.select{|i| i =~ /#{thing_to_find}/}
end

def my_hash_finding_method(source, thing_to_find)
   # This is the first attempt, but I don't like it because it doesn't match how I did the first method.
  # create a blank array (my_hash_finding_method)
  # my_hash_finding_method = []

  # FOR EACH i in source
  # source.each do |key,value|

  #   #, if the value equals thing_to_find,
  #   if value == thing_to_find
  #     #add it to the my_hash_finding_method
  #     my_hash_finding_method.push key
  #   end
  # end
  # #return my hash finding method
  # return  my_hash_finding_method
  #
  # Refactoring 1:
  # Find all the items  in source where the value equals thing_to_find
  source.select!{|key,value| value == thing_to_find}
  #return the keys of source
  source.keys
end

# Identify and describe the Ruby method(s) you implemented.
# two methods - "select" returns a copy of an array or hash to those that equals the codeblock (select! does it destructively)
# =~ equals regular expression
#

def my_array_modification_method!(source, thing_to_modify)
  source.map! { |x|
    if x.is_a?(Integer)
      x + thing_to_modify
    else
      x
    end
    }
end

my_array_modification_method!(i_want_pets, 1)


def my_hash_modification_method!(source, thing_to_modify)
  source.each do |key, value|
    source[key] = value + 2
  end
end

my_hash_modification_method!(my_family_pets_ages, 2)

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  p source.sort {|x,y| x.to_s <=> y.to_s}
end

def my_hash_sorting_method(source)
  p source.sort_by { |k,v| v}
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#



# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#
