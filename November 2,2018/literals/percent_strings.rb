# strings
s1 = %[123 abc]
s2 = %q|abc #{1+6}|
s3 = %Q|abc #{1+6}|
sx1 = %x(echo foo:#{s1})
# sx1 = %X(echo foo:#{s1})
p s1
p s2
p s3
p sx1

# arrays of strings
as1 = %w|a b c d e #{1+1}|
as2 = %W|a b c d e #{1+1}|
as3 = %w|one ten one-hundred\ one one-thousand|
p as1
p as2
p as3

# symbol
sym1 = %s^symbol^
# sym2 = %S|symbol|
p sym1

# array of symbols
asym1 = %i<sim1 sim2 sim3>
asym2 = %I{sim1 sim2 sim3}
p asym1
p asym2

# regular expression
r1 = %r|my rules for this|
# r2 = %R|another rule|
p r1.match("my rules for this meeting")
p r1.match("my rules FOR this meeting")
