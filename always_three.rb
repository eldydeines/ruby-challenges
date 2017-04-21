#Using method & Arguments - refactoring code:
#Asks the user for their number
#Gets number by using gets and assigning to variable
#Prints out the final number which is "3"

def always_three(my_number)
	((((((my_number.to_i)+5)*2)-4)/2)-(my_number.to_i))
end


puts "Give me a number: "
number = gets
puts "Always " + always_three(number).to_s