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

