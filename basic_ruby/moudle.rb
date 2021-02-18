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

class Animal
  def eat
    puts "oh, yummy"
  end
end

module Flyable
  def fly
    puts "OMG, I can fly"
  end
end

class Bird < Animal
  include Flyable
end


birdy = Bird.new
birdy.eat
birdy.fly
