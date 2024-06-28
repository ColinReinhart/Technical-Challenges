# @param {Integer[][]} edges
# @return {Integer}
def find_center(edges)
  hash = Hash.new(0)
  edges.flatten.each { |x| hash[x] += 1 }

  hash.key(edges.count)
end

 p find_center([[1,2],[2,3],[4,2]]) #2
 p find_center([[1,2],[5,1],[1,3],[1,4]]) #1
