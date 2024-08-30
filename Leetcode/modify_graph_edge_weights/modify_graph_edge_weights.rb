# @param {Integer} n
# @param {Integer[][]} edges
# @param {Integer} source
# @param {Integer} destination
# @param {Integer} target
# @return {Integer[][]}
def modified_graph_edges(n, edges, source, destination, target)
    require 'pry'; binding.pry
end

p modified_graph_edges(5, [[4,1,-1],[2,0,-1],[0,3,-1],[4,3,-1]], 0, 1, 5)
# p modified_graph_edges(3, [[0,1,-1],[0,2,5]], 0, 2, 6)
# p modified_graph_edges(4, [[1,0,4],[1,2,3],[2,3,5],[0,3,-1]], 0, 2, 6)
