# creating Arrays
p ary = [1, 2, 3]
p ary = [1, "a", Object.new]

p ary_new = Array.new
p ary_size = Array.new(5)
p ary_default = Array.new(3, true)
p ary_block = Array.new(4) { Hash.new }

p matrix = Array.new(3) { Array.new(3, 0) }

p kernel_method = Array({a: 'a', b: 'b'})

# accessing elements

arr = Array.new(10) { |i| i }
p arr[2]
p arr[-2]
p arr[2, 3]
p arr[1...4]
p arr[1..4]

p arr.at(5)
