def majority_element(nums)
  hash = Hash.new(0)
  nums.each { |num| hash[num] += 1 }
  keys = hash.max_by { |k,v| v }
  keys.first
end

p majority_element([3,2,3])
p majority_element([2,2,1,1,1,2,2])
