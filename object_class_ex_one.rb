# class Ferret
 
# 	def set_name=(ferret_name)
# 		@name = ferret_name
# 	end
 
# 	def get_name
# 		return @name
# 	end
 
# 	def set_owner=(owner_name)
# 		@owner_name = owner_name
# 	end
 
# 	def get_owner
# 		return @owner_name
# 	end
 
# 	def squeal
# 		return "squeeeeee"
# 	end

# end
 
# class Chincilla
 
# 	def set_name=(chinchilla_name)
# 		@name = chinchilla_name
# 	end
 
# 	def get_name
# 		return @name
# 	end

# 	def set_owner=(owner_name)
# 		@owner_name = owner_name
# 	end
 
# 	def get_owner
# 		return @owner_name
# 	end
 
# 	def squeek
# 		return "eeeep"
# 	end
 
# end
 
# class Parrot
 
# 	def set_name=(parrot_name)
# 		@name = parrot_name
# 	end
 
# 	def get_name
# 		return @name
# 	end
 
# 	def set_owner=(owner_name)
# 		@owner_name = owner_name
# 	end
 
# 	def get_owner
# 		return @owner_name
# 	end

# 	def tweet
# 		return "tweet"
# 	end
 
# end
 
# my_ferret = Ferret.new
# my_ferret.set_name = "Fredo"
# ferret_name = my_ferret.get_name
 
# my_parrot = Parrot.new
# my_parrot.set_name = "Budgie"
# parrot_name = my_parrot.get_name
 
# my_chincilla = Chincilla.new
# my_chincilla.set_name = "Dali"
# chincilla_name = my_chincilla.get_name
 
# puts "#{ferret_name} says #{my_ferret.squeal}, 
# #{parrot_name} says #{my_parrot.tweet}, 
# and #{chincilla_name} says #{my_chincilla.squeek}."
 
# puts my_ferret.inspect
# puts my_parrot.inspect
# puts my_chincilla.inspect

# refactor

class Pet
	def set_name=(pet_name)
		@name = pet_name
	end
 
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
 
	def set_noise=(pet_noise)
		@pet_noise = pet_noise
	end

	def get_noise
		return @pet_noise
	end
end

my_ferret = Pet.new
my_ferret.set_name = "Fredo"
ferret_name = my_ferret.get_name
my_ferret.set_noise = "squeeeeee"
ferret_noise = my_ferret.get_noise

my_parrot = Pet.new
my_parrot.set_name = "Budgie"
parrot_name = my_parrot.get_name
my_parrot.set_noise = "eeeepp"
parrot_noise = my_parrot.get_noise
 
my_chincilla = Pet.new
my_chincilla.set_name = "Dali"
chincilla_name = my_chincilla.get_name
my_chincilla.set_noise = "tweet"
chincilla_noise = my_chincilla.get_noise
 
puts "#{ferret_name} says #{ferret_noise}, 
#{parrot_name} says #{parrot_noise}, 
and #{chincilla_name} says #{chincilla_noise}."
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chincilla.inspect

















