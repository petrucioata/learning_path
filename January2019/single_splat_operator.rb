# unknown number of arguments for a method
def number_is_relative(*arguments)
  arguments.each do |argument|
    puts case argument
    when String
      "String: #{argument}"
    when Numeric
      "Integer: #{argument}"
    when Array
      "Array: #{argument}"
    when Hash
      "Hash: #{argument}"
    else
      "Something else: #{argument}"
    end
  end
end
number_is_relative(12, "Hello World!", %w(a b c d e), { k1: 10, k2: 20 }, (1..10))

# from array to method's arguments
def arguments_method(*arguments)
  arguments.each do |argument|
    puts argument
  end
end
array = %i|a b c d symbols|
arguments_method(*array)
p "<><><><><><><><><><><><><><><>"
arguments_method(array)

# method with splat argument and other types
def not_just_splat(x, *args, y)
  puts x
  puts y
  puts args.inspect
end
point = [10, 12]
x, y = 7, 9
not_just_splat(x, *point, y)

# pop elements from array
element, *other = %w|a b c d e f g h|
puts "#{element} <> #{other}"
just_first, * = %w|a b c d e f g h|
p just_first
*other, element = %w|a b c d e f g h|
p element
first, *, last = %w|a b c d e f g h|
puts "#{first} <> #{last}"

# join two arrays
p [*[1, 2, 3], *[4, 5, 6]]
p [[1, 2, 3], [4, 5, 6]].flatten
