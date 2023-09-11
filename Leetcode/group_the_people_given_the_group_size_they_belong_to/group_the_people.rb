# @param {Integer[]} group_sizes
# @return {Integer[][]}
def group_the_people(group_sizes)
  output = []
  temp_group = []
  group_sizes.each_with_index do |s, i|
    if s == 1
      output << [i]
    elsif temp_group.size < s
      temp_group << i
      if temp_group.size == s
        output << temp_group
      end
    elsif temp_group.size == s
      temp_group = [i]
    else temp_group.size > s
    end
  end
  return output
end

p group_the_people([3,3,3,3,3,1,3])
