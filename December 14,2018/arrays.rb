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
p arr.at(-5)
p arr.at(101) # nil

p arr.fetch(3)
p arr.fetch(-3)
# p arr.fetch(100) # error
p arr.fetch(100, "outside")

p arr.first
p arr.last

p arr.take(3)
p arr

p arr.drop(3)
p arr

# information about an Array

p arr.length
p arr.size
p arr.count

p arr.empty?

p arr.include?(9)

# Adding items

arr.push(67)
arr << 71
p arr

arr.unshift(91)
p arr

arr.insert(7, 44)
p arr

arr.insert(3, 38, 45)
p arr

# Removing items

p arr.pop
p arr

p arr.shift
p arr

p arr.delete_at(2)
p arr

arr << 67
p arr.delete(67)
p arr

arr << nil
p arr.compact
p arr
p arr.compact!
p arr

arr += arr
p arr
p arr.uniq
p arr
p arr.uniq!
