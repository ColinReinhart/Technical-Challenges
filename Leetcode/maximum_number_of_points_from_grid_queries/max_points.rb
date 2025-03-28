# @param {Integer[][]} grid
# @param {Integer[]} queries
# @return {Integer[]}
class MinHeap
  def initialize
    @data = []
  end

  def push(val)
    @data << val
    sift_up(@data.size - 1)
  end

  def pop
    return nil if @data.empty?
    swap(0, @data.size - 1)
    min = @data.pop
    sift_down(0)
    min
  end

  def peek
    @data[0]
  end

  def any?
    !@data.empty?
  end

  private

  def sift_up(idx)
    parent = (idx - 1) / 2
    return if idx <= 0 || @data[parent][0] <= @data[idx][0]
    swap(idx, parent)
    sift_up(parent)
  end

  def sift_down(idx)
    left = 2 * idx + 1
    right = 2 * idx + 2
    smallest = idx

    if left < @data.size && @data[left][0] < @data[smallest][0]
      smallest = left
    end
    if right < @data.size && @data[right][0] < @data[smallest][0]
      smallest = right
    end

    if smallest != idx
      swap(idx, smallest)
      sift_down(smallest)
    end
  end

  def swap(i, j)
    @data[i], @data[j] = @data[j], @data[i]
  end
end

def max_points(grid, queries)
  m, n = grid.size, grid[0].size
  directions = [[0,1],[1,0],[-1,0],[0,-1]]
  visited = Array.new(m) { Array.new(n, false) }
  result = Array.new(queries.size)
  sorted_queries = queries.each_with_index.sort

  heap = MinHeap.new
  heap.push([grid[0][0], 0, 0])
  visited[0][0] = true

  count = 0
  idx = 0

  while idx < sorted_queries.size
    q_val, q_index = sorted_queries[idx]

    while heap.any? && heap.peek[0] < q_val
      val, r, c = heap.pop
      count += 1

      directions.each do |dr, dc|
        nr, nc = r + dr, c + dc
        next if nr < 0 || nr >= m || nc < 0 || nc >= n || visited[nr][nc]

        heap.push([grid[nr][nc], nr, nc])
        visited[nr][nc] = true
      end
    end

    result[q_index] = count
    idx += 1
  end

  result
end

p max_points([[1,2,3],[2,5,7],[3,5,1]], [5,6,2]) #[5,8,1]
p max_points([[5,2,1],[1,1,2]], [3]) #[0]
