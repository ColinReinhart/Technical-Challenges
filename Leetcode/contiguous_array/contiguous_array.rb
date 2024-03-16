# @param {Integer[]} nums
# @return {Integer}
def find_max_length(nums)
  nums.include?(0) && nums.include?(1) ? find_max_length_helper(nums) : 0
end

def find_max_length_helper(nums)
  max_length = 0
  count = 0
  hash = {0 => -1}
  nums.each_with_index do |num, index|
    count += num == 0 ? -1 : 1
    if hash.key?(count)
      max_length = [max_length, index - hash[count]].max
    else
      hash[count] = index
    end
  end
  max_length
end

p find_max_length([0, 1]) # 2
p find_max_length([0, 1, 0]) # 2
p find_max_length([0,1,1,0,1,1,1,0]) # 4
