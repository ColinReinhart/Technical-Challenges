require 'set'
# @param {Integer[][]} board
# @return {Integer}
def sliding_puzzle(board)
  target = "123450"
  start = board.flatten.join
  neighbors = {
    0 => [1, 3],
    1 => [0, 2, 4],
    2 => [1, 5],
    3 => [0, 4],
    4 => [1, 3, 5],
    5 => [2, 4]
  }

  queue = [[start, 0]]
  visited = Set.new([start])

  while !queue.empty?
    current, steps = queue.shift
    return steps if current == target

    zero_index = current.index("0")
    neighbors[zero_index].each do |neighbor|
      new_state = current.dup
      new_state[zero_index], new_state[neighbor] = new_state[neighbor], new_state[zero_index]
      next if visited.include?(new_state)

      visited.add(new_state)
      queue << [new_state, steps + 1]
    end
  end

  -1
end

p sliding_puzzle([[1,2,3],[4,0,5]]) #1
p sliding_puzzle([[1,2,3],[5,4,0]]) #-1
p sliding_puzzle([[4,1,2],[5,0,3]]) #5
