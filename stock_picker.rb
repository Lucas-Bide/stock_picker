def stock_picker prices
    index = 0
    buy = 0
    sell = 0
    profit = 0
    while index < prices.length - 1
        if prices[index+1..-1].max - prices[index] > profit
            profit = prices[index+1..-1].max - prices[index]
            sell = prices.index(prices[buy+1..-1].max)
            buy = index
        end
        index += 1
    end
    [buy, sell].to_s
end

puts stock_picker([17,3,6,9,15,8,6,1,10])

