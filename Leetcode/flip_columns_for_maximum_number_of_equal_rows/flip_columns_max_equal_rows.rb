# @param {Integer[][]} matrix
# @return {Integer}
def max_equal_rows_after_flips(matrix)
  @max_matchy = 0
  @wip = matrix

  def count_matchy_rows(mat)
    count = 0
    mat.each do |row|
      if row.uniq.length == 1
        count += 1
      end
    end
    @max_matchy = count if count > @max_matchy
  end

  def reverse_binary_column(matrix, col_index)
    matrix.each do |row|
      row[col_index] = 1 - row[col_index]
    end
  end

  matrix[0].length.times do |col_index|
    reverse_binary_column(@wip, col_index)
    count_matchy_rows(@wip)
    reverse_binary_column(@wip, col_index)
  end

  @max_matchy
end

p max_equal_rows_after_flips([[0,1],[1,1]]) #1
p max_equal_rows_after_flips([[0,1],[1,0]]) #2
p max_equal_rows_after_flips([[0,0,0],[0,0,1],[1,1,0]]) #2
