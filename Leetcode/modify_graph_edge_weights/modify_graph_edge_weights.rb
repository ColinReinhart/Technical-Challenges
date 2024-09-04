def modified_graph_edges(n, edges, source, destination, target)
  adj = Array.new(n) { [] }

  # Build adjacency list
  edges.each do |u, v, w|
    adj[u] << [v, w]
    adj[v] << [u, w]
  end

  # Dijkstra's Algorithm
  def dijkstra(n, source, adj)
    dist = Array.new(n, Float::INFINITY)
    dist[source] = 0
    pq = [[0, source]]

    until pq.empty?
      d, u = pq.pop
      next if d > dist[u]

      adj[u].each do |v, w|
        next if w == -1  # Ignore uninitialized edges
        if dist[u] + w < dist[v]
          dist[v] = dist[u] + w
          pq.push([dist[v], v])
          pq.sort!.reverse!
        end
      end
    end

    dist
  end

  dist_source = dijkstra(n, source, adj)
  return [] if dist_source[destination] < target

  modified_edges = []
  edges.each do |u, v, w|
    if w == -1
      modified_edges << [u, v, 1]
      adj[u].delete([v, w])
      adj[v].delete([u, w])
      adj[u] << [v, 1]
      adj[v] << [u, 1]
    else
      modified_edges << [u, v, w]
    end
  end

  dist_with_min_weights = dijkstra(n, source, adj)
  return [] if dist_with_min_weights[destination] > target

  diff = target - dist_with_min_weights[destination]
  modified_edges.each do |edge|
    u, v, w = edge
    if w == 1 && diff > 0
      edge[2] += diff
      diff = 0
    end
  end

  modified_edges
end

p modified_graph_edges(5, [[4,1,-1],[2,0,-1],[0,3,-1],[4,3,-1]], 0, 1, 5)
# p modified_graph_edges(3, [[0,1,-1],[0,2,5]], 0, 2, 6)
# p modified_graph_edges(4, [[1,0,4],[1,2,3],[2,3,5],[0,3,-1]], 0, 2, 6)
