#這個陣列宣告只能字串而已
list = %w(ruby python c++)
p list

friends = ["amy", "mino", "john", "vicky"]

#正著數從0開始，倒著數從1開始
puts friends[0]
puts friends[-1]

#陣列的方法
puts friends.first
puts friends.last

#印出陣列長度
puts friends.length

#多加人在後面
#方法一 <<
friends << "edger"

puts friends
puts friends.length

#方法二 push
friends.push "edger"
puts friends

#map方法

list = [1, 2, 3, 4, 5]

p list.map {|x| x * 2}

p list.collect {|x| x * 4}

p (1..10).map {|x| x * x }

#挑選符合條件的
p (1..10).select { |x| x < 5 }

#挑選不合條件的
p (1..10).reject { |x| x < 5 } 

#會把範圍加總後出現一個值
p (1..10).reduce { |sum, x| sum + x }