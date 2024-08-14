# @param {Integer} rows
# @param {Integer} cols
# @param {Integer} r_start
# @param {Integer} c_start
# @return {Integer[][]}
def spiral_matrix_iii(rows, cols, r_start, c_start)
  directions = [[0, 1], [1, 0], [0, -1], [-1, 0]]
  result = []
  r, c = r_start, c_start
  step_count = 0
  total_cells = rows * cols

  result << [r, c] # Start position
  direction_index = 0

  while result.size < total_cells
    if direction_index == 0 || direction_index == 2
      step_count += 1
    end

    step_count.times do
      r += directions[direction_index][0]
      c += directions[direction_index][1]

      if r >= 0 && r < rows && c >= 0 && c < cols
        result << [r, c]
      end

      break if result.size >= total_cells
    end

    direction_index = (direction_index + 1) % 4
  end

  result
end


p spiral_matrix_iii(1, 4, 0, 0) == [[0,0],[0,1],[0,2],[0,3]]
p spiral_matrix_iii(5, 6, 1, 4) == [[1,4],[1,5],[2,5],[2,4],[2,3],[1,3],[0,3],[0,4],[0,5],[3,5],[3,4],[3,3],[3,2],[2,2],[1,2],[0,2],[4,5],[4,4],[4,3],[4,2],[4,1],[3,1],[2,1],[1,1],[0,1],[4,0],[3,0],[2,0],[1,0],[0,0]]
