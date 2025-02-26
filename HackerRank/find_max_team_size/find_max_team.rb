def findMaxTeamSize(skills)
  # Write your code here
  skills.sort!
  answer = []
  temp = []

  skills[0..-1].each do |skill|
    if temp == []
      temp << skill
    elsif skill == temp[-1] || skill == temp[-1] + 1
      temp << skill
    else
      if temp.count > answer.count
        answer = temp
      end
      temp = [skill]
    end
  end

  answer = temp if temp.count > answer.count

  return answer.count
end

p findMaxTeamSize([10,12,13,9,14]) # 3
