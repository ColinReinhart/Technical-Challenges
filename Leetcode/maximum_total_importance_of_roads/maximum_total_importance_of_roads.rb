# @param {Integer} n
# @param {Integer[][]} roads
# @return {Integer}
def maximum_importance(n, roads)
  max_value = 0
  hash = Hash.new(0)
  roads.flatten.each { |x| hash[x] += 1 }
  sorted = hash.sort_by { |k,v| v }

  city_value = Hash.new(0)
  sorted.reverse.each do |k, v|
    city_value[k] += n
    n -= 1
  end

  roads.each do |k,v|
    max_value += city_value[k] + city_value[v]
  end

  max_value
end

p maximum_importance(5, [[0,1],[1,2],[2,3],[0,2],[1,3],[2,4]]) #43
p maximum_importance(5, [[0,3],[2,4],[1,3]]) #20
