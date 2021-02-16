#把 Array [1, 2, 3, 4, 5] 變 [1, 3, 5, 7, 9]

list = [1, 2, 3, 4, 5]
p list.map {|x| x * 2 - 1}

#把 [1, 3, 4, 1, 7, nil, 7]由小排到大，移除 nil 和重複的內容

list = [1, 3, 4, 1, 7, nil, 7]
p list.compact.sort.uniq