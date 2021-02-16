language = ['PHP', 'Python', 'Ruby', 'Perl', 'ASP', 'ActionScript', 'Objective-C', 'Swift', 'Kotlin', 'Go']

#找出名字最短的程式名語
p language.sort_by {|x| x.length}.first

#龍哥版本
p language.min {|a, b| a.length <=> b.length}

#請寫一段程式，印出 P 開頭的程式語言
p language.select {|x| x.start_with?("P")}

#龍哥版本

p language.select {|x| x[0] == 'P'}



def calc_age(birthday)
  month = (birthday.split("/"))[1].to_i
  birthday = birthday.split("/").first.to_i
  if month < 2
    2021 - birthday
  elsif month > 2
    2021 - birthday - 1
  end
end

puts calc_age('1985/1/2')  # 印出 35
puts calc_age('1997/8/28') # 印出 22


#龍哥版本

require "date"
def calc_age(birthday)
  ((Date.today - Date.parse(birthday)).to_i / 365.0).ceil
end

puts calc_age('1985/1/2')  # 印出 35
puts calc_age('1997/8/28') # 印出 22


def is_valid_company_no?(serial)
  if serial.length == 8
    serial = serial.split("")
    total = serial.zip([1,2,1,2,1,2,4,1]).map{|x, y| x * y}
    total = "%02d" % total
    p total
  else
    "格式不符"
  end
end

puts is_valid_company_no?('2453680')  # 印出「格式不符」字樣
puts is_valid_company_no?('24536806') # 印出 true
puts is_valid_company_no?('12222539') # 印出 false

#龍哥方法
def is_valid_company_no?(serial)

  if serial.length != 8
    "格式不符"
  else
    params = [1, 2, 1, 2, 1, 2, 4, 1]

    checksum = 0
    serial.split('').each_with_index do |x, index|
      checksum += (x.to_i * params[index]).divmod(10).sum
    end

    if (checksum % 10 == 0) || (serial[6] && (checksum + 1) % 10 == 0)
      true
    else
      false
    end
  end
end



puts is_valid_company_no?('2453680')  # 印出「格式不符」字樣
puts is_valid_company_no?('24536806') # 印出 true
puts is_valid_company_no?('12222539') # 印出 false
