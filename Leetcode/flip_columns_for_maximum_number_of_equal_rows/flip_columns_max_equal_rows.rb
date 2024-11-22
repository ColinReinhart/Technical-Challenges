# @param {Integer[][]} matrix
# @return {Integer}
def max_equal_rows_after_flips(matrix)
  row_patterns = Hash.new(0)

  matrix.each do |row|
    normalized = row.map { |val| val ^ row[0] }
    row_patterns[normalized] += 1
  end

  row_patterns.values.max
end

p max_equal_rows_after_flips([[0, 1], [1, 1]]) # 1
p max_equal_rows_after_flips([[0, 1], [1, 0]]) # 2
p max_equal_rows_after_flips([[0, 0, 0], [0, 0, 1], [1, 1, 0]]) # 2
p max_equal_rows_after_flips([[1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1], [1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0], [1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1], [1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0], [1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1]]) # 2
