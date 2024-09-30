def stock_picker(stock)
profit= 0
days = []
stock.each_with_index do |value ,index|
  for i in 0...stock.length
    if stock[i] - value > profit && index < i
      profit = stock[i] - value
      days = [index , i] 
    end 
  end
end 
puts days.inspect
end
stock_picker([17,3,6,9,15,8,6,1,10])