# 1. How to extract individual digits from an Integer -> Ruby 2.4 changes, Fixnum and Bignum are now deprecated & both merged into Integer
# Ruby 2.4

# x = 123

# how to get the digits of this number?


# 2. The tap method -> Sometimes you want to create an object, call some methods on it & return that same object.

# how I do it:

# user = User.new
# user.name = "John"
# user

# how to get rid of temporary variables:

# User.new.tap { |user| user.name = "John" }

# 3. Array#values_at
# if you want to get multiple non-sequential values from an array or a hash you could do this:

# arr = [1,2,3,4,5]
# a, b, c = arr[0], arr[1], arr[2]

# but you could use values_at like this:
# a, b, c = arr.values_at(0, 1, 4)

# it also works on hash:
# hash = { creanga: "prost", grigore: "imparatul manelelor" }
# p hash.values_at(:creanga, :grigore)


# 4. Hash#transform_values
# you have a hash and you want to change all the values (for some reason)
# I think you would want to do it like this:
# h = { neuroni_creanga: 15, neuroni_grigore: 22 }
# h.each { |k,v| h[k] = v+1 }

# a better way to do it:
# h.transform_values! { |v| v + 1 }

# 5. Kernel#itself
# if you have an array and want to create a hash to stack duplicates:
# arr = [1,2,2,3,3,3,3,3,4,4]
# arr.group_by(&:itself)
# result : {1=>[1], 2=>[2, 2], 3=>[3, 3, 3, 3, 3], 4=>[4, 4]}

# 6. Enumerable#cycle
# easy way to repeat a pattern. Easiest way to create a toggle I guess.

# example:
# switch = ["on", "off"].cycle
# switch.next -- result will be "on"
# switch.next -- result will be "off"