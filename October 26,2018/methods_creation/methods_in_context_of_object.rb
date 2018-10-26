# create an instance of Object
first_object = Object.new

# define setter method for this instance
def first_object.set_variable=(value)
  @instance_variable = value
end

# define getter method for this instance
def first_object.get_variable
  p @instance_variable
end

# call methods on first_object
first_object.get_variable
first_object.set_variable = "Hello First Object"
first_object.get_variable

# create a second_object and try methods defined
second_object = Object.new

p second_object.instance_variable # undefined method `get_variable' for #<Object:0xyz> (NoMethodError)
second_object.instance_variable = "Hello Second Object"
p second_object.instance_variable

class Object
  attr_writer :instance_variable
  attr_reader :instance_variable
end

class Example
  def method_missing(name, *args)
    puts "#{name} called with #{args.size} arguments: #{args.join(' ')}"
  end
end

Example.new.random_method(11, "hello", Object.new)
