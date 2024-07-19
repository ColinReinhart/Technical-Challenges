# @param {Integer[][]} matrix
# @return {Integer[]}
def lucky_numbers (matrix)
  lucky = []
  min_in_row = []
  max_in_column = []
  column = 0

  matrix.each { |arr| min_in_row << arr.min}

  until matrix[0][column] == nil
    wip = []
    matrix.each do |arr|
      wip << arr[column]
    end
    max_in_column << wip.max
    column += 1
  end

  min_in_row.each do |min|
    if max_in_column.include?(min)
      lucky << min
    end
  end

  lucky
end

p lucky_numbers([[3,7,8],[9,11,13],[15,16,17]]) #15
p lucky_numbers([[1,10,4,2],[9,3,8,7],[15,16,17,12]]) #12
p lucky_numbers([[7,8],[1,2]]) #7
