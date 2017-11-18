# puts "Give me a number."
# number = gets
# puts (((number.to_i + 5) * 2 - 4) / 2) - number.to_i

# or

# puts "Give me a number."
# number = gets.to_i
# puts 'Always ' + (((number + 5) * 2 - 4) / 2 - number).to_s

# as a method

def always_three
	puts "Give me a number."
	number = gets.to_i
	puts 'Always ' + (((number + 5) * 2 - 4) / 2 - number).to_s
end

# as a method with arguments

def always_three(number)
	puts 'Always ' + (((number + 5) * 2 - 4) / 2 - number).to_s
end