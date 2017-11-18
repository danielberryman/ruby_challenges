# # Blog is the parent class
# # @@all_blog_posts = [] creates a class variable called 'all_blog_posts' that's set equal to an empty array
# # 2nd @@ creates class variable that sets the number of blog posts at the beginning to 0

# class Blog
#   @@all_blog_posts = []
#   @@num_blog_posts = 0

# # next a class method 'all' is defined. this class methods gets the array defined above

#   def self.all
#     @@all_blog_posts
#   end

# # another class method 'add' is defined. It takes 1 argument called 'thing' but this is local. This method adds the argument to the empty class var array @@all_blog_posts and then increases to total stored number of blogposts by 1

#   def self.add(thing)
#     @@all_blog_posts << thing
#     @@num_blog_posts += 1
#   end
 
# # another class method 'publish' is defined.
# # here the built in method .each is used to loop through the @@all_blog_posts array
# # do is just a word that is used to mean does
# # |post| written like that represents the elements that are the values in the array. Can the parent class reach down into the child class?
# # then for each instance in the array outputs 

#   def self.publish
#     @@all_blog_posts.each do |post|
#       puts "Title: #{post.title}"
#       puts "Body: #{post.content}"
#       puts "Publish Date: #{post.created_at}"
#     end
#   end
# end

# # BlogPost is the child class of Blog

# class BlogPost < Blog

# # this class method is called 'create'
# # it first defines the method
# # declares a new post, output title, get the input value and assign it to post.title
# # same with content and date, calls 'save' method which calls 'add method'
# # and finally calls itself based on a condition

#   def self.create
#     post = new
#     puts "Name your blog post:"
#     post.title = gets.chomp
#     puts "Your blog post content:"
#     post.content = gets.chomp
#     post.created_at = Time.now
#     post.save
#     puts "Do you want to create another post? [Y/N]"
#     create if gets.chomp.downcase == 'y'

#  #returns if not ‘y’ and stops the rest of the script from running. otherwise, continues to run ‘create’ method.

#   end

# # defines a method that gets the 'title' instance variable

#   def title
#     @title
#   end
 
# # defines a method that sets the 'title' instance variable

#   def title=(title) # a setter method always takes an argument
#     @title = title # don’t forget to set the instance variable
#   end

# # defines a method that gets the 'date' instance variable

#   def created_at
#     @created_at
#   end

# # defines a method that sets the 'date' instance var

#   def created_at=(created_at)
#     @created_at = created_at
#   end

# # defines a method that gets the 'content' instance variable

#   def content
#     @content
#   end

# # defines a method that sets the 'content' instance var

#   def content=(content)
#     @content = content
#   end

# # defines a method that calls the add method on BlogPost class, uses BlogPost as it's argument

#   def save
#     BlogPost.add(self)
#   end

# end

 
# # This begins the loop created by method create
# BlogPost.create
# # This defines all_blog_post array as the value created when you call the all method on BlogPost class object
# all_blog_posts = BlogPost.all

# puts all_blog_posts.inspect

# BlogPost.publish

# my blog code

class Blog

  @@all_blog_posts = []
	@@total_posts = 0

  def self.all
    @@all_blog_posts
  end
	
  def self.add(thing)
    @@all_blog_posts << thing
    @@total_posts += 1
  end

  def self.publish
    @@all_blog_posts.each do |post|
      puts "Title: #{post.title}"
      puts "Content: #{post.content}"
      puts "Author: #{post.author}"
      puts "Publish Date: #{post.publish_date}"
    end
  end

end
	
class BlogPost < Blog
	
  def self.create
		post = self.new
		puts "Title:"
		post.title = gets.chomp
		puts "Content:"
		post.content = gets.chomp
    puts "Author:"
    post.author = gets.chomp
		post.publish_date = Time.now
		post.save
		puts "Do you want to create another post? [Y/N]"
		create if gets.chomp.downcase == 'y' 
	end
	
  attr_accessor :title
	
  attr_accessor :content
	
  attr_accessor :publish_date
	
  attr_accessor :author
	
  def save
		BlogPost.add(self)
	end

end

BlogPost.create

all_blog_posts = BlogPost.all

puts all_blog_posts.inspect

Blog.publish