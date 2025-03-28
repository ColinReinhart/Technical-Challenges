# @param {Integer[][]} grid
# @param {Integer[]} queries
# @return {Integer[]}
def max_points(grid, queries)
  require 'set'

  m, n = grid.size, grid[0].size
  directions = [[0,1],[1,0],[-1,0],[0,-1]]
  visited = Array.new(m) { Array.new(n, false) }

  # Min-heap (priority queue) simulation using a sorted array
  heap = [[grid[0][0], 0, 0]]
  visited[0][0] = true
  sorted_query_indices = queries.each_with_index.sort
  result = Array.new(queries.size)
  count = 0
  idx = 0

  cells = []

  while idx < sorted_query_indices.size
    q_val, q_index = sorted_query_indices[idx]

    while heap.any? && heap[0][0] < q_val
      val, r, c = heap.shift
      cells << val
      count += 1

      directions.each do |dr, dc|
        nr, nc = r + dr, c + dc
        next if nr < 0 || nr >= m || nc < 0 || nc >= n || visited[nr][nc]

        heap << [grid[nr][nc], nr, nc]
        visited[nr][nc] = true
      end

      heap.sort_by!(&:first)
    end

    result[q_index] = count
    idx += 1
  end

  result
end

p max_points([[1,2,3],[2,5,7],[3,5,1]], [5,6,2]) #[5,8,1]
p max_points([[5,2,1],[1,1,2]], [3]) #[0]
