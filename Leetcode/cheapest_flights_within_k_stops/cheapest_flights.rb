# @param {Integer} n
# @param {Integer[][]} flights
# @param {Integer} src
# @param {Integer} dst
# @param {Integer} k
# @return {Integer}
def find_cheapest_price(n, flights, src, dst, k)
  require 'pry'; binding.pry
end

p find_cheapest_price(4, [[0,1,100],[1,2,100],[2,0,100],[1,3,600],[2,3,200]], 0, 3, 1)
p find_cheapest_price(3, [[0,1,100],[1,2,100],[0,2,500]], 0, 2, 1)
p find_cheapest_price(3, [[0,1,100],[1,2,100],[0,2,500]], 0, 2, 0)
