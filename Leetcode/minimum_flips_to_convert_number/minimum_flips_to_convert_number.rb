# @param {Integer} start
# @param {Integer} goal
# @return {Integer}
def min_bit_flips(start, goal)
  count = 0
  if start == goal
    return count
  end

  split_start = start.to_s(2).split('').reverse
  split_goal = goal.to_s(2).split('').reverse

  max_length = [split_start.length, split_goal.length].max
  split_start.fill("0", split_start.length...max_length)
  split_goal.fill("0", split_goal.length...max_length)

  hash = Hash.new(0)
  split_start.each_with_index do |n,i|
    if n != split_goal[i]
      count += 1
    end
  end

  count
end

p min_bit_flips(10, 7) #3
p min_bit_flips(3,4) #3
