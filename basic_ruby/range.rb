p (1..10).to_a
p (1...10).to_a


puts ("a".."z")

for i in (1..10)
	puts i
end



#印出1~100之間所有的單數
puts (1..100).select {|x| x % 2 == 1}
#另一個判斷單數的方法 odd
puts (1..100).select {|x| x.odd?}


# 印出1~100總和
puts (1..100).reduce {|sum, x| sum + x}
puts (1..100).sum

# 印出5個小於100但不重複的亂數
puts (1..100).to_a.shuffle.first(5)
p (1..100).to_a.sample(5)