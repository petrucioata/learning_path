# ary & ary2 - new_ary; set intersection
p [1, 1, 3, 5] & [1, 2, 1, 5]

# ary * int - repetition
# ary * string - equivalent to ary.join(str)
p [1, 2, 3] * 3
p [1, 2, 3] * '&'

# ary + ary2 - concatenation
p [1, 2, 3, 7] + [1, 3, 5, 7]

# ary - ary2 - difference
p [1, 1, 2, 3, 5, 7] - [1, 2, 4, 6]

# ary << obj
p [1, 2, 3] << Object.new

# ary == ary2
p [1, 2, 3] == [1, 2, 'a']
p [1, 7] == [7, 1]
p [3, 5] == [3, 5]

# ary <=> ary2
p [1, 2, 3] <=> [1, 2]
p [1, 2, 3] <=> [1, 3]
p [1, 2, 3] <=> [1, 2, 3]
p [1, 2, 3] <=> 'string'
