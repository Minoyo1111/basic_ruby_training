def bmi_calculator(height, weight)
	begin 
		weight / (height * height)
	rescue
    puts "你輸入的號碼有誤"
  end
end

p bmi_calculator(0, 80)

#也可以簡化成這樣
def bmi_calculator(height, weight)
	weight / (height * height)
rescue => exception
  "你輸入的號碼有誤"
end

p bmi_calculator(0, 80)