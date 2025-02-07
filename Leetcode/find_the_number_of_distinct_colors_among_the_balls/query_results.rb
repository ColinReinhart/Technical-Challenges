# @param {Integer} limit
# @param {Integer[][]} queries
# @return {Integer[]}
def query_results(limit, queries)
  results = []
  hash = Hash.new(0)

  queries.each do |i,c|
    hash[i] = c
    results <<  hash.values.uniq.count
  end

  results
end

# p query_results(4, [[1,4],[2,5],[1,3],[3,4]]) #[1,2,2,3]
p query_results(4, [[0,1],[1,2],[2,2],[3,4],[4,5]]) #[1,2,2,3,4]
