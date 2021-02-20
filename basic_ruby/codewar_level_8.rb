def count_by(x, n)
  (1..5).map{|num| num * x}
end

p count_by(1, 5)    # [1, 2, 3, 4, 5]
p count_by(2, 5)    # [2, 4, 6, 8, 10]
p count_by(3, 5)    # [3, 6, 9, 12, 15]
p count_by(50, 5)   # [50, 100, 150, 200, 250]
p count_by(100, 5)  # [100, 200, 300, 400, 500]



def alphabet_position(text)
  #a的代碼是97，如果要變成1要減掉96
  text.gsub(/\W/, "").downcase.bytes.map{|x| x - 96}.join(" ")
end

p alphabet_position("The sunset sets at twelve o' clock.")
# 印出 "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" 字串

p alphabet_position("-.-'")
# 印出 "" 空字串

class String
  def is_uppercase? 
    self == upcase
  end
end

puts "c".is_uppercase?                       # false
puts "C".is_uppercase?                       # true
puts "hello I AM DONALD".is_uppercase?       # false
puts "HELLO I AM DONALD".is_uppercase?       # true
puts "ACSKLDFJSgSKLDFJSKLDFJ".is_uppercase?  # false
puts "ACSKLDFJSGSKLDFJSKLDFJ".is_uppercase?  # true


def opposite(n)
  - n
end

puts opposite(1)   # -1
puts opposite(14)  # -14
puts opposite(-34) # 34

def repeat_str(n, s)
  puts (s * n)
end

repeat_str(6, "I")     # 印出 IIIIII
repeat_str(5, "Hello") # 印出 HelloHelloHelloHelloHello


# 找出離某個數字最近的平方數
def nearest_sq(n)
  #開根號
  num = Math.sqrt(n).round
  num = num * num
end

puts nearest_sq(1)    # 1
puts nearest_sq(2)    # 1
puts nearest_sq(10)   # 9
puts nearest_sq(111)  # 121
puts nearest_sq(9999) # 10000


#龍哥解法
def nearest_sq(n)
  #開根號
  num = Math.sqrt(n).round ** 2
end

puts nearest_sq(1)    # 1
puts nearest_sq(2)    # 1
puts nearest_sq(10)   # 9
puts nearest_sq(111)  # 121
puts nearest_sq(9999) # 10000


def monkey_count(n)
  (1..n).map{|x| x }
end

p monkey_count(5)  # 印出 [1, 2, 3, 4, 5]
p monkey_count(3)  # 印出 [1, 2, 3]
p monkey_count(9)  # 印出 [1, 2, 3, 4, 5, 6, 7, 8, 9]
p monkey_count(10) # 印出 [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p monkey_count(20) # 印出 [1, 2, 3, 4, 5, 6,..略..18, 19, 20]

#龍哥版本
def monkey_count(n)
  (1..n).to_a
end

p monkey_count(5)  # 印出 [1, 2, 3, 4, 5]
p monkey_count(3)  # 印出 [1, 2, 3]
p monkey_count(9)  # 印出 [1, 2, 3, 4, 5, 6, 7, 8, 9]
p monkey_count(10) # 印出 [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p monkey_count(20) # 印出 [1, 2, 3, 4, 5, 6,..略..18, 19, 20]

def count_sheep(num)
 (1..num).to_a.map{|x| "#{x} sheep..." }.join
end

puts count_sheep(1)  # 印出 1 sheep...
puts count_sheep(2)  # 印出 1 sheep...2 sheep...
puts count_sheep(3)  # 印出 1 sheep...2 sheep...3 sheep...

def century(year)
  if year % 100 == 0
    return year / 100
  else 
    return (year /100) + 1
  end
end

puts century(1705)  # 18 世紀
puts century(1900)  # 19 世紀
puts century(1601)  # 17 世紀
puts century(2000)  # 20 世紀

#龍哥版本
def century(year)
  "#{(year / 100.0).ceil} 世紀"
end

puts century(1705)  # 18 世紀
puts century(1900)  # 19 世紀
puts century(1601)  # 17 世紀
puts century(2000)  # 20 世紀

def solution(sentence)
  sentence.split(" ").reverse.join(" ")
end

puts solution("The greatest victory is that which requires no battle") 
# 印出 battle no requires which that is victory greatest The

#龍哥版本
def solution(sentence)
  sentence.split.reverse.join(" ")
end

puts solution("The greatest victory is that which requires no battle") 
# 印出 battle no requires which that is victory greatest The


def squareSum(numbers)
  if numbers.is_a?(Array)
    numbers.map {|num| num * num }.sum
  else
    numbers ** 2
  end  
end

puts squareSum(2)          # 印出 4
puts squareSum([1, 2, 2])  # 印出 9

#龍哥版本
def squareSum(numbers)
  Array(numbers).reduce(0){|sum, x| sum += x ** 2}
end

puts squareSum(2)          # 印出 4
puts squareSum([1, 2, 2])  # 印出 9

#龍哥版本
def remove_char(s)
  s[1..-2]
end

p remove_char('eloquent')  # "loquen"
p remove_char('country')   # "ountr"
p remove_char('person')    # "erso"
p remove_char('place')     # "lac"
p remove_char('ok')        # ""

