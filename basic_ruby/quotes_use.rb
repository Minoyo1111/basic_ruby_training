name = "mino"
age = 18

#雙引號可以串接，單引號不行
puts "hi, I am #{name}, I am #{age} years ago"
puts 'hi, I am #{name}, I am #{age} years ago'


#反斜線可以讓單引號跳脫字元
puts 'I\'m 17 years old'

#使用%q
puts %q(I'm 17 years old)
