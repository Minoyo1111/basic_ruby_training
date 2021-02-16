#for 迴圈
names = ["mino", "amy", "john", "vicky"]

for name in names
	puts name
end

#while 迴圈
x = 0

while x < 10
	puts x
	x += 1 #記得要改變條件，不然會無限迴圈
end

#loop 迴圈
i = 0
loop do
	puts i
	i += 1
	break if i > 10 #要寫出跳出的條件，如果沒有就無限迴圈
end

#method 迴圈
5.times do 
	puts "hello, runy"
end

1.upto(10) do |i|
	puts "hello, runy #{i}"
end

10.downto(1) do |i|
	puts "hello, runy #{i}"
end

#迭代是迴圈
names = ["mino", "amy", "john", "vicky"]

#不用寫條件，因為他就是會每個都跑過一次
names.each do |name|
	puts name
end

#如果想要額外做索引累加，使用 with_index 
names.each.with_index do |name, x|
	puts "#{x} #{name}"
end
