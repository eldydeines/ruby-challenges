#PROGRAM BLOG
#CREATES TWO CLASSES Parent BLOG and Child BLOG_POST
#User will be asked to input blog information and 
#will be asked to add more if wanted to with y/n question.
#Once user is done inputting, the blogs will be tallied
#and will be published.

class Blog

	#INITIALIZER
	@@total_blogs = 0

	def initialize
		@@total_blogs += 1
	end

	def self.blog_count
		puts "****************  *******  ****************"
		puts "Number of blogs you saved: #{@@total_blogs}"
		return @@total_blogs
	end

end #End of Class Blog

class Blog_Post < Blog

	#SETTERS
	def set_title=(title)
		@title = title
	end

	def set_content=(content)
		@content = content
	end 

	def set_publish_date=(publish_date)
		@publish_date = publish_date
	end

	def set_author=(author)
		@author = author
	end

	#GETTERS
	def get_title
		return @title
	end

	def get_content
		return @content
	end

	def get_publish_date
		return @publish_date
	end

	def get_author
		return @author
	end

	def get_info
		puts "Title: #{get_title}, Publish Date: #{get_publish_date}, Author: #{get_author}"
		puts "Content: #{get_content}"
	end

end #End of Class Blog_Post


#GET USER TO INPUT BLOGS
answer = "y"
array_index = 0
my_blogs = Array.new 

while (answer == "y")

	puts "Would you like to create another blog post? [y/n]"
	answer = gets.chomp.downcase
	if (answer == "y")

		my_blogs[array_index] = Blog_Post.new

		puts "Please enter your blog's title: "
		my_blogs[array_index].set_title = gets.chomp

		puts "Please enter your blog's content: "
		my_blogs[array_index].set_content = gets.chomp

		puts "Please enter your blog's publish date: "
		my_blogs[array_index].set_publish_date = gets.chomp

		puts "Please enter your blog's author: "
		my_blogs[array_index].set_author = gets.chomp

		array_index += 1

	end

end

#PUBLISH TIME
my_blog_count = Blog.blog_count
array_index = 0

puts "Since your done adding, let's publish your blogs."

while (array_index < my_blog_count)

	puts "Blog #{array_index+1} "
	my_blogs[array_index].get_info
	array_index += 1

end

#End of Program