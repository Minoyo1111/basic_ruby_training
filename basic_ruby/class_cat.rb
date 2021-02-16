# 類別
class Cat
	def woo
		puts "mou woooooo"
	end
end

# 實體
kitty = Cat.new
kitty.woo

class Cat
	def initialize
		puts "hi, 你好"
	end
end


kitty = Cat.new

class Cat
	def initialize(name, age)
		puts "hi, #{name} 你好"
	end
end

kitty = Cat.new("Mino", 18)


# 在ruby裡不能直接拿到肚子裡的東西，必須要轉一手
class Cat
	def initialize(name)
		@name = name
	end
	
	#這個叫 getter
	def name
		@name
	end

	def name=(new_name)
		@name = new_name
	end
end

kitty = Cat.new("kitty kk")
#要有 name 方法才能拿到
p kitty.name

#也不能直接換名字，要寫一個 name= 的方法
kitty.name=("mino")

p kitty.name


class Cat
  # attr_reader :name
  # attr_writer :name
  attr_accessor :name

	def initialize(name)
		@name = name
	end
	
end


kitty = Cat.new("kitty kk")
#要有 name 方法才能拿到
kitty.name

#也不能直接換名字，要寫一個 name= 的方法
kitty.name=("mino")

p kitty.name

class Cat
	@@count = 0
	def initialize
		@@count += 1
	end

	def self.counter
		return @@count
	end
end

5.times {
  Cat.new
}

p Cat.counter
