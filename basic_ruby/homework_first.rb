#使用迴圈印出星星
stars = ["*", "**", "***", "****", "*****"]
stars.each do |star|
  puts star
end

#龍哥版本
1.upto(5) do |n|
  p "*" * n
end

#完成以下計算潤年的方法：
def is_leap_year?(y)
    y % 4 == 0 && y % 100 != 0 || y % 400 == 0
end

puts is_leap_year?(1998)  # 印出 false
puts is_leap_year?(2000)  # 印出 true
puts is_leap_year?(2100)  # 印出 false

#請讓這個 BMI 計算方法可以顯示期待的結果
puts 3.45444.round(2)
def bmi_calculator(height, weight)
  #BMI = 體重(公斤) / 身高*身高
  h = height.to_f / 100
  w = weight
  #平方表示可以用 **(2)=>二次方, **(5) => 五次方
  bmi = w / (h * h)
  bmi.round(1)
end


puts bmi_calculator(170, 50) # 印出 17.3 (小數點以下一位，四捨五入)
puts bmi_calculator(180, 65) # 印出 20.1 (小數點以下一位，四捨五入)


