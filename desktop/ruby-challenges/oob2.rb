#Create class object 
#Use attribute writers and readers
#Use attibute assessor
#Create your object it and run some of its methods

class Kid

	#attr_writer :name, :parent_name
	#attr_reader :name, :parent_name
	attr_accessor :name, :parent_name

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

kid1.name = "Lilia"
kid2.name = "Karlin"

kid1.parent_name = "Eldy"
kid2.parent_name = "Eldy"

puts "#{kid1.name} will be playing #{kid1.sports}"
puts "#{kid2.name} is still wearing #{kid2.diapers}"

puts kid1.inspect
puts kid2.inspect
