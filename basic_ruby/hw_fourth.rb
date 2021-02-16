def generate_odd_numbers(n)
  (1..n).select{|x| x.odd?}
end

p generate_odd_numbers(7)  # 印出 [1, 3, 5, 7]
p generate_odd_numbers(15) # 印出 [1, 3, 5, 7, 9, 11, 13, 15]
p generate_odd_numbers(8)  # 印出 [1, 3, 5, 7]
p generate_odd_numbers(6)  # 印出 [1, 3, 5]
p generate_odd_numbers(3)  # 印出 [1, 3]


def calc_area(radius)
  if radius > 0
    (radius * radius * 3.14159).round(2)
  else
    return "Radius must greater than zero!"
  end
end

puts calc_area(8)   # 印出 201.06
puts calc_area(10)  # 印出 314.16
puts calc_area(15)  # 印出 706.86
puts calc_area(-1) 

def generate_order_code(str)
  if str < 100
    data = "TN-00000#{str}"
  elsif str < 1000
    data = "TN-0000#{str}"
  elsif str < 10000
    data = "TN-000#{str}"
  end
  return data
end

puts generate_order_code(29)    # 印出 TN-0000029
puts generate_order_code(328)   # 印出 TN-0000328
puts generate_order_code(1224)  # 印出 TN-0001224

#龍哥版本
def generate_order_code(str)
  "TN-#{ ("%07d" % str)}"
end


puts generate_order_code(29)    # 印出 TN-0000029
puts generate_order_code(328)   # 印出 TN-0000328
puts generate_order_code(1224)  # 印出 TN-0001224

