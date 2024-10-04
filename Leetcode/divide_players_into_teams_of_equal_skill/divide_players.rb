# @param {Integer[]} skill
# @return {Integer}
def divide_players(skill)
  arr = []
  target = skill.max + skill.min

  skill.sort!
  until skill == []
    if skill.max + skill.min != target
      return -1
    else
      arr << [skill.shift, skill.pop]
    end
  end

  answer = 0
  arr.each { |x, y| answer += x * y }
  answer
end

p divide_players([3,2,5,1,3,4]) #22
p divide_players([3,4]) #12
p divide_players([1,1,2,3]) #-1
