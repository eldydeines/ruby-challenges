#Testing out while loop
puts "How many times do you love me? (Enter a number please):"
my_number = gets

my_number = my_number.to_i

my_iterator = 0

while (my_iterator < my_number)
	puts "#{my_iterator+1}. I Love You!"
	my_iterator += 1
end