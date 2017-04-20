#This program will ask the user for their birthdate
#and will then provide their numerology.

#METHODS SECTION

#ASK USER FOR BIRTHDATE AND SAVE AS STRING VARIABLE
def get_birthday
	puts "Please enter your birthdate like so MMDDYYYY"
	birthdate_str = gets
end

#CONVERT STRING TO INT
def convert_birthday
	birthdate_str = get_birthday
	your_number = birthdate_str[0].to_i + birthdate_str[1].to_i + birthdate_str[2].to_i 
	your_number = your_number + birthdate_str[3].to_i + birthdate_str[4].to_i + birthdate_str[5].to_i 
	your_number = your_number + birthdate_str[6].to_i + birthdate_str[7].to_i

	#SECOND ROUND OF ADDING NUMBERS TOGETHER
	your_number = your_number.to_s
	your_number = your_number[0].to_i + your_number[1].to_i

	#LAST ROUND OF ADDING IF NEEDED
	if (your_number > 9)
		your_number = your_number.to_s
		your_number = your_number[0].to_i + your_number[1].to_i
	end

	return your_number
end

#DETERMINE WHAT YOUR NUMEROLOGY IS
def get_numerology (your_number)
	case your_number
		when 1
			puts "You are a ONE! One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
		when 2
			puts "You are a TWO! This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
		when 3
			puts "You are a THREE! Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
		when 4
			puts "You are a FOUR! This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
		when 5
			puts "You are a FIVE! This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
		when 6 
			puts "You are a SIX! This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
		when 7 
			puts "You are a SEVEN! This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
		when 8 
			puts "You are an EIGHT! This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
		when 9
			puts "You are a NINE! This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
		else 
			puts "Sorry, but your number doesn't exist."
	end
end

#CALL METHOD
get_numerology(convert_birthday)