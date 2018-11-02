p "this is a string"
p 'this is a string'

p "a string inside another 'string'"
# p 'a string inside another "string"'
p 'a string inside another \"string\"'
# p 'a string inside another `string`'


# interpolation
p "One plus one equals: #{1+1}"
p 'One plus one equals: #{1+1}'
p %(One plus one equals: #{1+1})

double_quotes =  "con" "cat" "en" "at" "ion"
combination = %(this) " was " "a " "#{double_quotes}"
# other_combination = "another " %(example that has strings) "again"
simple_double_quote = 'a' "b" "#{double_quotes}"

p double_quotes
p combination
# p other_combination
p simple_double_quote


# character literal notation
p ?a
# p ?abc
p ?\n
p ?\C-a


# HERE documents
here_no1 = <<HERE
This contains a string

  that is formatted
HERE

here_no2 = <<here
This contains a string
  that is formatted
  here
here

here_no3 = <<-INDENTATION
 SOME random text here
 # INDENTATION
 INDENTATION

here_no4 = <<~example
  other random the origin of species
  charles darwin
  example

p here_no1
p here_no2
p here_no3
p here_no4
