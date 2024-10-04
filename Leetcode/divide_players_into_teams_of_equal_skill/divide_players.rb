# @param {Integer[]} skill
# @return {Integer}
def divide_players(skill)
  answer = 0
  skill.sort!
  target = skill.first + skill.last

  left = 0
  right = skill.length - 1

  while left < right
    if skill[left] + skill[right] != target
      return -1
    end
    answer += skill[left] * skill[right]
    left += 1
    right -= 1
  end

  answer
end

p divide_players([3,2,5,1,3,4]) #22
p divide_players([3,4]) #12
p divide_players([1,1,2,3]) #-1
