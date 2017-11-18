# def my_second_method
# 	puts 2 + 2
# end

# w parameters or arguments

# def add_two_nums(num1, num2)
# 	puts num1 + num2
# end

def name_of_person
	puts 'What is you name?'
	their_name = gets
end

def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end
 
def greeting
	their_name = name_of_person
	if(their_name == 'Emily') then message = "I love that name!"
	elsif (their_name == 'Daniel') then message = "I don't like that name"
	else message = "Hmmm...I don't know that name."
	end

	current_hour = determine_current_hour
	if(current_hour > 3 && current_hour < 12) then time = "morning" 
	elsif(current_hour > 12 && current_hour < 18) then time = "afternoon" 
	elsif(current_hour > 18 || current_hour < 2) then time = "evening"
	end
	
	puts "Hello #{their_name}. #{message}"
end
greeting("Emily")