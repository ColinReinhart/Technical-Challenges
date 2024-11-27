# @param {Integer} n
# @param {Integer[][]} queries
# @return {Integer[]}
def shortest_distance_after_queries(n, queries)
  answer = []
  road = (0..n-1).to_a

  queries.each do |x, y|
    road.reject! { |city| city > x && city < y }
    answer << road.length - 1
  end

  answer
end

p shortest_distance_after_queries(5, [[2,4],[0,2],[0,4]]) #[3,2,1]
p shortest_distance_after_queries(4, [[0,3],[0,2]]) #[1,1]
