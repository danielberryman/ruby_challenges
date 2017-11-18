puts "Have I been good? y/n:"
behavior = gets.chomp.downcase

while (behavior.downcase == "n")
	puts "Haven't I been good?"
	behavior = gets.chomp
end

puts "I love you"