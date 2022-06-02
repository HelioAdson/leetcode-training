# Time Limit Exceeded
def max_profit(prices)
  profit = 0
  prices.each_with_index do |price, index|
    current_profit = prices.drop(index).max.to_i - price
    profit = current_profit if current_profit > profit
  end
  profit
end


# Time Limit Exceeded
def max_profit(prices)
  profit = 0
  min_price = prices[0]
  (0..prices.length - 1).each do |i|
    next if prices[i] > min_price
    current_profit = prices.drop(i).max.to_i - prices[i]
    profit = [profit, current_profit].max
  end
  profit
end

# Success
def max_profit(prices)
  profit = i = 0
  min_price = prices[0]
  while i < prices.size
    next min_price = prices[i] if  prices[i] < min_price
    current_profit = prices[i] - min_price
    profit = [profit, current_profit].max
    i += 1
  end
  profit
end

# Optimized
def max_profit(prices)
  profit = 0
  min_price = prices[0]
  prices.each_with_index do |price, index|
    next min_price = price if  price < min_price
    current_profit = price - min_price
    profit = [profit, current_profit].max
  end
  profit
end
