#FizzBuzz Program
#Write a program that prints the numbers from 1 to 100
#For multiples of three, print “Fizz” instead of the number
#For multiples of five, print “Buzz” instead of the number
#For numbers which are multiples of both three and five, print “FizzBuzz” instead of the number


my_iterator = 1

while (my_iterator < 101)
	if (my_iterator%3 == 0 && my_iterator%5 == 0)
		puts "FizzBuzz"
	elsif (my_iterator%3 == 0)
		puts "Fizz"
	elsif (my_iterator%5 == 0)
		puts "Buzz"
	else
		puts my_iterator
	end
	my_iterator += 1
end