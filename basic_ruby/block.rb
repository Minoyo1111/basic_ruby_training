def go_pupu
	yield
	puts "oh.....hummmm"
end

go_pupu {
	puts "open door"
}

def gives_gift
	yield 4
end

gives_gift { |x|
	puts x * 3
}

def gives_gift
	yield 4, 7
end

gives_gift { |x, y|
	puts x * 3 + y
}

# block 會讓出真假值
def check_number(n)
  if yield(n)
    puts "sorry"
  else 
    puts "ok"
  end
end

puts check_number(5) { |x|
	x == 2
}

#試著土炮做出 select 
def my_select(list)
  new_list = []
  list.each do |n|
    new_list << n if yield(n)
  end
  new_list
end


puts my_select([1, 2, 3, 4, 5]) { 
  |x| x.odd?
}

def go_pupu
	if block_given?
    yield
  end
  puts "no thanks"
end

go_pupu {
  puts "hummmmmm"
}