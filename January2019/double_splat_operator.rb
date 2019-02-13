# introduced in Ruby 2.0
def keyword_arguments_method(arg1, **args)
  p args
end

keyword_arguments_method(12, k1: 1, k2: 2)
