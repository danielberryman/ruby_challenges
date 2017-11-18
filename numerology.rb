# # ask for their birthday
# puts "What's your birthdate? Use this format: MMDDYYY"
# # get the data and set it to a var
# birthdate = gets
# # change the string into and integer (this is array syntax so it auto creates an array)
# # add all the number in the data together
# number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i
# # convert the number back to a string
# number = number.to_s
# # change the string into an integer with array syntax and add all the number in the data together
# number = number[0].to_i + number[1].to_i
# # write an if else statement to see if your number is less than or equal to 9 or greater than 9
# if number > 9
# 	number = number[0].to_i + number[1].to_i
# end

# case number
# when 1
# 	puts "Your numerology number is #{number}. One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
# when 2
# 	puts "Your numerology number is #{number}. This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
# when 3
# 	puts "Your numerology number is #{number}. Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
# when 4
# 	puts "Your numerology number is #{number}. This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
# when 5
# 	puts "Your numerology number is #{number}. This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
# when 6
# 	puts "Your numerology number is #{number}. This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
# when 7
# 	puts "Your numerology number is #{number}. This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
# when 8
# 	puts "Your numerology number is #{number}. This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
# when 9
# 	puts "Your numerology number is #{number}. This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
# else
# 	puts "Uh oh! Your birthpath number isn't 1-9!"
# end

# refactor for methods/arguments

def get_birthpath_number(birthdate)
	number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i
	number = number.to_s
	number = number[0].to_i + number[1].to_i
	if number > 9
	number = number[0].to_i + number[1].to_i
	end
	return number
end

def get_message (birth_path_num)
	case birth_path_num
	when 1
		puts "Your numerology number is #{birth_path_num}. One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
	when 2
		puts "Your numerology number is #{birth_path_num}. This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
	when 3
		puts "Your numerology number is #{birth_path_num}. Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
	when 4
		puts "Your numerology number is #{birth_path_num}. This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
	when 5
		puts "Your numerology number is #{birth_path_num}. This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
	when 6
		puts "Your numerology number is #{birth_path_num}. This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
	when 7
		puts "Your numerology number is #{birth_path_num}. This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
	when 8
		puts "Your numerology number is #{birth_path_num}. This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
	when 9
		puts "Your numerology number is #{birth_path_num}. This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
	else
		puts "Uh oh! Your birthpath number isn't 1-9!"
	end
end

puts "What's your birthdate? Use this format: MMDDYYY"
birthdate = gets

birth_path_num = get_birthpath_number(birthdate)

message = get_message(birth_path_num)

puts message






















