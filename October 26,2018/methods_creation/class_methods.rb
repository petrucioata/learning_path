# using self
class Person
  p "Using self: #{self}"
  def self.my_name
    'AlexCD'
  end
end

# using class
class << Person
  p "Using class: #{self}"
  def my_name
    "Andrei"
  end
end

# using class and self
class Person
  p "Using class and self: #{self}"
  class << self
    p "Using class with self: #{self}"
    def my_name
      'AlexP'
    end
  end
end

# using instance_eval
Person.instance_eval do
  p "Using instance_eval: #{self}"
  def my_name
    "George"
  end
end

# using singleton - open class
def Person.my_name
  p "Using open class: #{self}"
  "PetruC"
end

# define the class as instance of Class
Person = Class.new
def Person.my_name
  "Ruby Team"
end

class Class
  def your_name
    "#{name.upcase}"
  end
end

# p Person.your_name
