print "<><><> PRINT: <><><>\n"
# Kernel#print - object.to_s
print 123
print "text"
print Object.new
print []
print nil

puts "\n<><><> PUTS: <><><>"
# Kernel#puts - object.to_s + "\n"
puts 123
puts "text"
puts Object.new
puts []
puts nil

p "<><><> P: <><><>"
# Kernel#p - object.inspect + "\n"
p 123
p "text"
p Object.new
p []
p nil
