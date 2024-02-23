# @param {Integer} n
# @param {Integer[][]} flights
# @param {Integer} src
# @param {Integer} dst
# @param {Integer} k
# @return {Integer}
def find_cheapest_price(n, flights, src, dst, k)
  neighbors = Hash.new{|h, k| h[k] = []}

  flights.each do|from, to, price|
    neighbors[from] << [price, to]
  end

  queue = neighbors[src].map do |price, to|
    [price, to, k]
  end.sort

  visited = {src => k}

  until queue.empty?
    price, city, remaining = queue.shift
    visited[city] = remaining
    return price if city == dst
    neighbors[city].each do |cost, to|
        next if visited[to] && visited[to] >= remaining
        next_price = price + cost
        index = queue.bsearch_index {|price, _, _| price > next_price} || queue.size
        queue.insert(index, [next_price, to, remaining-1])
    end if remaining > 0
  end
  -1
end

p find_cheapest_price(4, [[0,1,100],[1,2,100],[2,0,100],[1,3,600],[2,3,200]], 0, 3, 1)
p find_cheapest_price(3, [[0,1,100],[1,2,100],[0,2,500]], 0, 2, 1)
p find_cheapest_price(3, [[0,1,100],[1,2,100],[0,2,500]], 0, 2, 0)
