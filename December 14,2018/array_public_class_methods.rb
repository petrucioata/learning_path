# [](*args) - returns a new array populated with the given objects
Array.[](1, 'a', /^A/)
Array[1, 'a', /^A/]
[1, 'a', /^A/]

# new(size=0, obj=nil)
# new(array)
# new(size) { |index| block }

first = ['Matz', 'Guido']
second = Array.new(first)
p first.equal? second # false
p Array.new(3) { |i| i*3 }

a = Array.new(2, {})
p a
a[0]['name'] = 'John'
p a
a[1]['name'] = 'Jasmine'
p a

a = Array.new(2) { {} }
a[0]['name'] = 'Ed'
p a

# try_convert(obj) - array or nil
p Array.try_convert([1, 2, 3])
p Array.try_convert("random string")
