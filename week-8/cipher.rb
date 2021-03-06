# Cipher Challenge

# I worked on this challenge [by myself]
# I spent [1] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # this creates an array of the characters (lowercase) of coded_message
#   decoded_sentence = [] # decoded_sentence = empty array.
#   cipher = {"e" => "a",   # Creates a hash that shifts 4 letters down.
#             "f" => "b",   # in revision, replace this with the .ord method for strings
#             "g" => "c",  # and the chr method for integers
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # For EACH character(x) of the array (input) DO...
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? # if its true, then there's a cypher match for the character
#     cipher.each_key do |y| # for EACH key (y) in the dictionary cypher, DO...
#       if x == y  # if the array character equals the dictionary cypher
#         decoded_sentence << cipher[y] # shovel the corresponding value for y(key) to  decoded Sentence
#         found_match = true # set variable found_match to true
#         break  # Break from the cycle through cipher hash.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #if x equals any of these characters
#         decoded_sentence << " " # add a space to the decoded sentence.
#         found_match = true # set variable found_match to true
#         break # break from the cycle through cipher hash.
#       elsif (0..9).to_a.include?(x) # if the character (x) is a digit.
#         decoded_sentence << x # shovel that digit into the decoded sentence
#         found_match = true # set variable found_match to true
#         break # break from the cycle through cipher hash.
#       end # end for if statements
#     end #end for each cipher key.
#     if not found_match  # What is this looking for? # if it hasn't found the character's through any of the above if statements.
#       decoded_sentence << x #then just shovel the mystery character into the
#     end #end for if
#   end #end for each character in input
#   decoded_sentence = decoded_sentence.join("") # return decoded_array, joined back as a string.
#   #What is this method returning? decoded sentence.join
# end

# Your Refactored Solution
def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("") # this creates an array of the characters (lowercase) of coded_message
  decoded_sentence = [] # decoded_sentence = empty array.
  input.each do |char| # For EACH character of the array (input) DO...
      if ('a'..'z').to_a.include?(char)  # if it's a-z, decrypt by shifting 4 letters down.
        decrypt_ord = char.ord - 4 #decrypt by shifting 4 letters down
        if decrypt_ord < 97 # if its below the ordinal for "a"
          decrypt_ord += 26 #add 26 so it loops around.
        end
        decoded_sentence << decrypt_ord.chr
      elsif char == "@" || char == "#" || char == "$" || char == "%"|| char == "^" || char == "&"|| char =="*" #if char equals any of these characters
        decoded_sentence << " " # add a space to the decoded sentence.
      elsif (0..9).to_a.include?(char) # if the character (x) is a digit.
        decoded_sentence << char # shovel that digit into the decoded sentence
      else # otherwise
        decoded_sentence << char #then just shovel the mystery character into the
      end # end for if statements
  end #end for each character in input
  decoded_sentence.join("") # return decoded_array, joined back as a string.
end




# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l") == "our early attempts at a tractor beam went through several preparations. preparations a through g were a complete failure.\n but now, ladies and gentlemen, we finally have a working tractor beam, which we shall call preparation h"
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.") == "you see, i've turned the moon into what i like to call a death star."
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.") == "mini me, if i ever lost you i don't know what i would do.\n i'd probably move on and get another clone but there would be a 15 minute period there where i would just be inconsolable."
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?") == "why make a trillion when we could make... billions?"

# Reflection
# Keep your reflection limited to 10-15 minutes!
