# 機車：

# 1. 不計時數，每天 20 元

# 汽車

# 1. 前 2 個小時，每小時 40 元；超過 2 小時之後每小時 30 元。
# 2. 未滿一小時以一小時計費。
# 3. 停車費每天最高上限為 500 元。

def calc_parking_fee(vehicle_type, parking_hour)
  if vehicle_type == :motocycle
    return 20
  else 
    if parking_hour <= 1
      return 20
    elsif parking_hour <= 2
      return parking_hour.ceil * 40
    elsif parking_hour >= 3
      return (parking_hour.ceil - 2 ) * 30 + 80
    else
      return "sorry, something wrong"
    end
  end
end

# 少了伍佰上限驗證

puts calc_parking_fee(:motocycle, 2)  
puts calc_parking_fee(:motocycle, 8)  

puts calc_parking_fee(:car, 1.5)

puts calc_parking_fee(:car, 4)        
puts calc_parking_fee(:car, 5.5)      
puts calc_parking_fee(:car, 18)     

#龍哥解法
def calc_parking_fee(vehicle_type, parking_hour)
  fee = 0
  parking_hour = parking_hour.ceil

  case vehicle_type
  when :motocycle
    fee = 20
  when :car
    if parking_hour <=2
      fee = parking_hour * 40
    else 
      fee = 80 + (parking_hour - 2) * 30
    end

    fee = 500 if fee >500 
  end
  return fee
end

puts calc_parking_fee(:motocycle, 2)  
puts calc_parking_fee(:motocycle, 8)  

puts calc_parking_fee(:car, 1.5)

puts calc_parking_fee(:car, 4)        
puts calc_parking_fee(:car, 5.5)      
puts calc_parking_fee(:car, 18) 


class ATM
  def initialize(amount)
    @balance = amount
  end

  def withdraw(amount)
    @balance = @balance + amount
  end

  def deposit(amount)
    @balance = @balance - amount
  end

  def balance
    return @balance
  end
end

atm = ATM.new(10)

atm.withdraw(5)
puts atm.balance  # 印出 5

atm.deposit(10)
puts atm.balance  # 印出 15