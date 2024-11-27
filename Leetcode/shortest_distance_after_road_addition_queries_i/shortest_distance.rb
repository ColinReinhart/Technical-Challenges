# @param {Integer} n
# @param {Integer[][]} queries
# @return {Integer[]}
def shortest_distance_after_queries(n, queries)
  graph = Array.new(n) { [] }
  (0...n - 1).each { |i| graph[i] << i + 1 }

  def bfs_shortest_path(graph, n)
    visited = Array.new(n, false)
    queue = [[0, 0]]
    visited[0] = true

    while !queue.empty?
      node, dist = queue.shift
      return dist if node == n - 1

      graph[node].each do |neighbor|
        next if visited[neighbor]

        visited[neighbor] = true
        queue << [neighbor, dist + 1]
      end
    end

    -1
  end

  answer = []
  queries.each do |u, v|
    graph[u] << v
    answer << bfs_shortest_path(graph, n)
  end

  answer
end

p shortest_distance_after_queries(5, [[2,4],[0,2],[0,4]]) #[3,2,1]
p shortest_distance_after_queries(4, [[0,3],[0,2]]) #[1,1]
p shortest_distance_after_queries(5, [[1,3],[2,4]]) #[3,3]
