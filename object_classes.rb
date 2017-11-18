# class Cat
# 	def set_name= (cat_name)
# 		@name = cat_name
# 	end

# 	def get_name
# 		return @name
# 	end

# 	def set_type= (cat_type)
# 		@type = cat_type
# 	end

# 	def get_type
# 		return @type
# 	end

# end

# my_cat = Cat.new

# my_cat.set_name = "Taloose"

# my_cat_name = my_cat.get_name

# my_cat.set_type = "Tabby"

# my_cat_type = my_cat.get_type

# puts "#{my_cat_name} is a #{my_cat_type} cat."

# puts my_cat.inspect

# parent and child classes

class Cat
	def set_name=(cat_name)
		@name = cat_name
	end
	def get_name
		@name
	end
	def set_type=(cat_type)
		@type = cat_type
	end
	def get_type
		@type
	end
	def set_size=(cat_size)
		@size = cat_size
	end
	def get_size
		@size
	end
end

class Tabby < Cat
	def eye_color
		return "brown"
	end
	def fur_thickness
		return "very thick"
	end
end

my_tabby = Tabby.new
my_tabby.set_name = "Taloose"
my_tabby_name = my_tabby.get_name
my_tabby.set_type = "tabby"
my_tabby_type = my_tabby.get_type
my_tabby_fur = my_tabby.fur_thickness
my_tabby_eye = my_tabby.eye_color

puts "#{my_tabby_name} is a #{my_tabby_type} with #{my_tabby_eye} eyes and #{my_tabby_fur} fur."

puts my_tabby.inspect


































