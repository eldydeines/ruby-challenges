#Create class object 
#Use getters and setters
#Create your object it and run some of its methods

class Kid

	#SETTERS
	def set_name=(kid_name)
		@name = kid_name
	end

	def set_parent_name=(parent_name)
		@parent = parent_name
	end

	#GETTERS
	def get_name
		return @name 
	end

	def get_parent_name
		return @parent
	end

end

class Toddler < Kid

	def diapers
		return "Pull-ups"
	end

end

class Preteen < Kid

	def sports
		return "Soccer"
	end

end

kid1 = Preteen.new
kid2 = Toddler.new

kid1.set_name = "Lilia"
kid2.set_name = "Karlin"

kid1.set_parent_name = "Eldy"
kid2.set_parent_name = "Eldy"

puts "#{kid1.get_name} will be playing #{kid1.sports}"
puts "#{kid2.get_name} is still wearing #{kid2.diapers}"

puts kid1.inspect
puts kid2.inspect
