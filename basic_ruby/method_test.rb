def hi(sb)
	puts "say hi to #{sb}"
end

hi("mino")

code = 18 

def code
 return 30
end

p code #答案是什麼？？？

def good_day(weather = "sunny")
	puts "it's #{weather}. how wonderful day"
end

good_day

def test_A(num)
	puts num * 3
end

def test_B(num)
  num * 4
end

p test_A(2)
puts test_B(3)

def really?(event) #通常回傳真假值
	if event == "I'm so cool"
		return true
	else
		return false
	end
end 

p really?("I'm so cool")

#sort 不會破壞原結構
list = [3, 5, 1, 2]
p list.sort 
p list

#sort!會破壞原結構
list = [3, 5, 1, 2]
p list.sort! 
p list

def is_adult?(age)
	if age >= 18
		return true
	else
		return false
	end
end

p is_adult?(20)

#精簡版
def is_adult?(age)
	age >= 18
end

p is_adult?(20)
