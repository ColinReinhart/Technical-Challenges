# @param {Integer[][]} grid
# @return {Integer[]}
def find_missing_and_repeated_values(grid)
  answer = []
  n = grid.flatten.length
  hash = (1..n).map { |key| [key, 0] }.to_h
  grid.flatten.each { |num| hash[num] += 1 }
  answer << hash.key(2)
  answer << hash.key(0)

  return answer
end

p find_missing_and_repeated_values([[1,3],[2,2]]) #[2,4]
p find_missing_and_repeated_values([[9,1,7],[8,9,2],[3,4,6]]) #[9,5]
