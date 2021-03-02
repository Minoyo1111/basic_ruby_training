arr = [16, 0, 11, 4, 8, 16, 0, 11]
p arr.select{|item| arr.count(item) == 1 }