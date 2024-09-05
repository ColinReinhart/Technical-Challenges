require 'set'
# @param {Integer[]} commands
# @param {Integer[][]} obstacles
# @return {Integer}
def robot_sim(commands, obstacles)
  obstacle_set = obstacles.to_set

  x, y = 0, 0
  max_distance = 0
  direction_index = 0
  directions = [[0, 1], [1, 0], [0, -1], [-1, 0]]

  commands.each do |command|
    if command == -1
      direction_index = (direction_index + 1) % 4
    elsif command == -2
      direction_index = (direction_index + 3) % 4
    else
      dx, dy = directions[direction_index]
      command.times do
        new_x, new_y = x + dx, y + dy
        if obstacle_set.include?([new_x, new_y])
          break
        end
        x, y = new_x, new_y
        max_distance = [max_distance, x**2 + y**2].max
      end
    end
  end

  return max_distance
end

p robot_sim([4,-1,3], []) == 25
p robot_sim([4,-1,4,-2,4], [[2,4]]) == 65
p robot_sim([6,-1,-1,6], []) == 36
