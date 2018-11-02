# special cases - lambda
add = -> { 2 + 2 }
multiply10 = ->(arg1) { arg1 * 10 }

p "Literal proc(lambda)"
p add.call
# p multiply10.call
p multiply10.call(2)
# p multiply10.call(2, 3, 4)

add_lamdba = lambda { 2 + 3 }
multiply10_lambda = lambda { |arg1| arg1 * 10 }

p "Lambda"
p add_lamdba.call
# p multiply10_lambda.call
p multiply10_lambda.call(2)
# p multiply10_lambda.call(2, 3, 4)

# procs
add_proc = Proc.new { 1 + 3 }
multiply10_proc = Proc.new { |arg| arg * 10 }

p "Procs"
p add_proc.call
# p add_proc.call(10)
# p multiply10_proc.call
p multiply10_proc.call 3
# p multiply10_proc.call 3, 4, 5
# p multiply10_proc.call(3, 4, 5)

