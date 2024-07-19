# @param {Integer[][]} matrix
# @return {Integer[]}
def lucky_numbers(matrix)
  min_in_row = matrix.map(&:min)
  max_in_column = matrix.transpose.map(&:max)

  min_in_row.select { |min| max_in_column.include?(min) }
end

p lucky_numbers([[3,7,8],[9,11,13],[15,16,17]]) #15
p lucky_numbers([[1,10,4,2],[9,3,8,7],[15,16,17,12]]) #12
p lucky_numbers([[7,8],[1,2]]) #7
