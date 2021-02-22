def sum_array(arr)
  arr = Array(arr)
  if arr.count > 2
    arr.sort[1..-2].sum
  else 
    0
  end
end

#扣除陣列中最大值跟最小值之後的總和
puts sum_array(nil)                      # 0
puts sum_array([])                       # 0
puts sum_array([3])                      # 0
puts sum_array([-3])                     # 0
puts sum_array([ 3, 5])                  # 0
puts sum_array([-3, -5])                 # 0
puts sum_array([6, 2, 1, 8, 10])         # 16
puts sum_array([6, 0, 1, 10, 10])        # 17
puts sum_array([-6, -20, -1, -10, -12])  # -28
puts sum_array([-6, 20, -1, 10, -12])    # 3


def merge_arrays(a, b)
  (a + b).sort.uniq
end

p merge_arrays([1, 3, 5], [2, 4, 6])  # [1, 2, 3, 4, 5, 6]
p merge_arrays([2, 4, 8], [2, 4, 6])  # [2, 4, 6, 8]

#龍哥方法

def merge_arrays(a, b)
  (a | b) .sort
end

p merge_arrays([1, 3, 5], [2, 4, 6])  # [1, 2, 3, 4, 5, 6]
p merge_arrays([2, 4, 8], [2, 4, 6])  # [2, 4, 6, 8]


def abbrev_name(name)
  name.split.map{|x| x[0]}.join(".")
end

puts abbrev_name("Sam Harris")      # S.H
puts abbrev_name("Patrick Feenan")  # P.F
puts abbrev_name("Evan Cole")       # E.C
puts abbrev_name("P Favuzzi")       # P.F
puts abbrev_name("David Mendieta")  # D.M

def square_or_square_root(array)
#開根號是整數，就開根號，不然就給他平方
  array.map do |x|
    if Math.sqrt(x) % 1 == 0
      Integer.sqrt(x)
    else
      x ** 2
    end
  end
end

p square_or_square_root([4, 3, 9, 7, 2, 1])      # [2, 9, 3, 49, 4, 1]
p square_or_square_root([100, 101, 5, 5, 1, 1])  # [10, 10201, 25, 25, 1, 1]
p square_or_square_root([1, 2, 3, 4, 5, 6])      # [1, 4, 9, 2, 25, 36]

#correct 參數是正確答案，answer 參數是學生作答答案，每答對一題得 4 分，答錯一題扣 1 分，沒答不得分也不扣分，請完成實作內容：
def check_exam(correct, answer)
  right = (correct & answer).count
  wrong = correct.count - right
  right * 4 - wrong
end

puts check_exam(["a", "a", "b", "b"], ["a", "c", "b", "d"])  # 6
puts check_exam(["a", "a", "c", "b"], ["a", "a", "b",  ""])  # 7
puts check_exam(["a", "a", "b", "c"], ["a", "a", "b", "c"])  # 16
puts check_exam(["b", "c", "b", "a"], ["",  "a", "a", "c"])  # 0


#龍哥版本
def check_exam(correct, answer)
  #把兩個陣列兩兩比對
  score = correct.zip(answer).map do |c, a|
    case a
    when c
      4
    when ""
      0
    else
      -1
    end
  end.sum
  # if score > 0
  #   score
  # else
  #   0
  # end
  #三元運算寫法
  (score > 0) ? score : 0
    #陣列判斷，回傳大的
  [score, 0].max
end

puts check_exam(["a", "a", "b", "b"], ["a", "c", "b", "d"])  # 6
puts check_exam(["a", "a", "c", "b"], ["a", "a", "b",  ""])  # 7
puts check_exam(["a", "a", "b", "c"], ["a", "a", "b", "c"])  # 16
puts check_exam(["b", "c", "b", "a"], ["",  "a", "a", "c"])  # 0

def give_me_five
  # 有什麼方法不用數字印出五
  [1, 2, 3, 4, 5].count
end  

puts give_me_five  # 5