module Flyable
	def fly
		puts "I believe I can fly"
	end
end

class Cat
include Flyable
end

kitty = Cat.new
kitty.fly