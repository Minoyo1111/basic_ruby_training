def calc_sum(param)
  if param.class == Array 
    param.sum
  elsif param.class == Integer
    param
  else
    0
  end
end

puts calc_sum([1, 2, 3, 4, 5])  # 印出 15
puts calc_sum(5)                # 印出 5
puts calc_sum(nil)              # 印出 0

#龍哥方法1
def calc_sum(param)
  case param
  when Array
    param.sum
  when Integer
    param
  else
    0
  end
end

puts calc_sum([1, 2, 3, 4, 5])  # 印出 15
puts calc_sum(5)                # 印出 5
puts calc_sum(nil)              # 印出 0

#龍哥方法2
def calc_sum(param)
  param = Array(param)
  param.sum
end

puts calc_sum([1, 2, 3, 4, 5])  # 印出 15
puts calc_sum(5)                # 印出 5
puts calc_sum(nil)              # 印出 0

#龍哥方法
class String
  def greeting!
    "Hello, #{self.capitalize}"
  end
end

puts "kitty".greeting!  # 印出 Hello, Kitty

