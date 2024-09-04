# @param {Integer[]} commands
# @param {Integer[][]} obstacles
# @return {Integer}
def robot_sim(commands, obstacles)
  location = [0,0]
  direction = 'r'

  commands.each do |com|
    require 'pry'; binding.pry
  end
end

p robot_sim([4,-1,3], [])
# p robot_sim([4,-1,4,-2,4], [[2,4]])
# p robot_sim([6,-1,-1,6], [])
# p robot_sim([6,-1,-1,6], [0,0]) #Weird edgecase to have obstacle at starting point, what happens?
