require 'csv'

def save(file_name, data)
	CSV.open(file_name, 'w') do |csv_object|
  		data.each do |row_array|
    		csv_object << row_array
  		end
	end
end

def read(file_name)
	CSV.foreach(file_name) do |row|
  		puts row.inspect
	end

end

# customers = CSV.read('file.csv')
# p customers # => [["Dan", "34", "2584", "Lovin it!"], ["Maria", "55", "5054", "Good, delicious food"]]
	
=begin
CSV.foreach('file.csv') do |row|
  puts row.inspect
end
=end

# => ["Dan", "34", "2584", "Lovin it!"]
# => ["Maria", "55", "5054", "Good, delicious food"]

=begin
string = "Dan,34\nMaria,55"
CSV.parse(string) #=> [["Dan", "34"], ["Maria", "55"]]
CSV.parse(string) { |row| puts row.inspect }  # => ["Dan", "34"] and ["Maria", "55"] on separate lines
=end


average_money_spent = Array.new
CSV.foreach('file.csv', converters: :numeric) do |row|
  average_money_spent << row[2] / row[1]
  # row is just an ordinary array and you access its elements with []
end
 
# p average_money_spent # => [76, 91, 197, 192]

=begin  
customers_array = CSV.read('file.csv')

customers_array.each do |customer|
 customer << average_money_spent.shift
end


CSV.open('file_1.csv', 'w') do |csv_object|
  customers_array.each do |row_array|
    csv_object << row_array
  end
end



=begin
read('file_1.csv')
=end

=begin
guests = CSV.read('file_2.csv', :headers => true)
p guests # => <CSV::Table mode:col_or_row row_count:5>


guests.each do |guest_row|
  p guest_row #<CSV::Row "Name:"Dan"...
end
=end

# p guests.to_a 
# p guests.to_s

=begin
guests = CSV.foreach('file_2.csv') do |row|
  puts row[0] #=> outputs "Name", "Dan", "Maria", "Carlos", "Stephany" on separate lines
end


guests = CSV.foreach('file_2.csv', headers:true) do |row|
  puts row['Name'] # For each row, give me the cell that is under the 'Name' column
end
=end
=begin
guests = CSV.read('file_2.csv',headers: true) #<CSV::Table mode:col_or_row row_count:5>
p guests
guests << ['Eve', 24, 54, 'Delicious'] #<CSV::Table mode:col_or_row row_count:6>
p guests
p guests.headers #=> ["Name", "Times arrived", "Total $ spent", "Food feedback"]

save('file_3.csv', guests)
read('file_3.csv')
CSV.read('file_3.csv', headers: true)

guests.delete('Name') # => ["Dan", "Maria", "Carlos", "Stephany"]


p guests.delete(0) # <CSV::Row "Name":"Dan" "Times arrived":"34" "Total $ spent":"2584" "Food feedback":"Lovin it!">
=end
