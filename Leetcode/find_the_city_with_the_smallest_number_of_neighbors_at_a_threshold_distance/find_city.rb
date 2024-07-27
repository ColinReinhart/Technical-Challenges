# @param {Integer} n
# @param {Integer[][]} edges
# @param {Integer} distance_threshold
# @return {Integer}
def find_the_city(n, edges, distance_threshold)
    # Step 1: Initialize the distance matrix
  dist = Array.new(n) { Array.new(n, Float::INFINITY) }

  # Distance to itself is 0
  n.times { |i| dist[i][i] = 0 }

  # Step 2: Populate the distance matrix with given edges
  edges.each do |(u, v, w)|
    dist[u][v] = w
    dist[v][u] = w
  end

  # Step 3: Apply Floyd-Warshall algorithm
  n.times do |k|
    n.times do |i|
      n.times do |j|
        if dist[i][k] + dist[k][j] < dist[i][j]
          dist[i][j] = dist[i][k] + dist[k][j]
        end
      end
    end
  end

  # Step 4: Count neighbors within the distance threshold for each city
  min_neighbor_count = Float::INFINITY
  result_city = -1

  n.times do |i|
    neighbor_count = 0
    n.times do |j|
      if i != j && dist[i][j] <= distance_threshold
        neighbor_count += 1
      end
    end

    # Step 5: Determine the result city
    if neighbor_count < min_neighbor_count || (neighbor_count == min_neighbor_count && i > result_city)
      min_neighbor_count = neighbor_count
      result_city = i
    end
  end

  result_city
end

p find_the_city(4, [[0,1,3],[1,2,1],[1,3,4],[2,3,1]], 4)
p find_the_city(5, [[0,1,2],[0,4,8],[1,2,3],[1,4,2],[2,3,1],[3,4,1]], 2)
