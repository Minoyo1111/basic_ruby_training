def two_sum(nums, target)
  new_list = []
  for num in nums
    new_list << target - num
  end
  p nums & new_list
end

two_sum([3, 2, 4], 6)

        
# 讓陣列都跟 target 減完後變成新陣列
# [7, 2, -2, -6]
# 如果兩個陣列有一樣的就取出來
# 取出來的數變成新陣列，再把 target - 新陣列[0]
