# @param {Integer[]} prices
# @return {Integer[]}
def final_prices(prices)
  answer = []

  prices.each_with_index do |x, i|
    discount = 0
    prices[i+1..-1].each do |y|
      if y <= x
        discount = y
        break
      end
    end
    answer << (x - discount)
  end

  answer
end

p final_prices([8,4,6,2,3]) # [4,2,4,2,3]
p final_prices([1,2,3,4,5]) # [1,2,3,4,5]
p final_prices([10,1,1,6])  # [9,0,1,6]
