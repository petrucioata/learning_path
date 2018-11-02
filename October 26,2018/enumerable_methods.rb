# all? method example

strings = ["bacon", "orange", "apple"]
strings.all? { |str| str.size == 5 } # => false
[].all? # => true

# none? method example

strings = ["bacon", "orange", "apple"]
strings.none? { |str| str.size == 5 } # => false

# any? method example

[1,2,3,4,5].any? # => true # (works like the inverse of empty?)

[1,2,3].any? { |n| n>0 } # => true



# New Ruby 2.5 Feature

[{}, []].all?(Hash) # => false

[{}].all?(Hash) # => true

[1,2,3,"ds"].any?(String) # => true

[1,2,3].all?(1..10) # => true

fruit = ["apple", "orange", "banana"]
fruit.any?(/^a/) # => true
fruit.all?(/^a/) # => false
fruit.none?(/^a/) # => false
fruit.one?(/^a/) # => true
