=begin
Implement a function named generate_range(min, max, step)
min - first integer is the minimum value
max - second is the maximum of the range
step -third is the step (min < max)
Generate a range of integers from min to max, with the step.

generate_range(2, 10, 2) # should return array of [2,4,6,8,10]
generate_range(1, 10, 3) # should return array of [1,4,7,10]
=end

# S1 - using times
def generate_range(min, max, step)
  res = [min]
  ((max-min)/step).times do
    res << min + step
    min = min + step
  end
  res.to_a
end

# S2 - using range and step method
def generate_range(min, max, step)
  (min..max).step(step).inject([]){ |data, el| data << el }
end

# S3 - using step method from Integer class
def generate_range(min, max, step)
  min.step(max, step).to_a
end
