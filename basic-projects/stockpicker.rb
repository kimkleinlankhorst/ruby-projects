def stock_picker(prices)
  min_price = prices[0]
  min_day   = 0

  best_profit = 0
  best_days   = []

  prices.each_with_index do |price, day|

    profit = price - min_price

    # store these indexes if more profit is made on this sell_day
    if profit > best_profit
      best_profit = profit
      best_days = [min_day, day]
    end

    if price < min_price
      min_price = price
      min_day = day
    end
  end

  best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])