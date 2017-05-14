def stock_picker(prices)
  max_nums = []
  max = 0
  prices.length.times do |i|

    j = i+1
    while prices[j]
      diff = prices[j] - prices[i]
      if diff > max 
        max = diff
        max_nums = [i, j]
      end
      #puts "#{prices[i]}  #{i}\t#{j}  #{prices[j]}\t #{diff}"
      j += 1
    end
  end

  return max_nums.to_s
  
end

puts stock_picker([17,3,6,9,15,8,6,1,10])