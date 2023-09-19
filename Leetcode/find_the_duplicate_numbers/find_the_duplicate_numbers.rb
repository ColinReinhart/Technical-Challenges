def find_duplicate(nums)
  hash = Hash.new(0)
  nums.find { |num| (hash[num] += 1) == 2 }
end

p find_duplicate([1,3,4,2,2])
p find_duplicate([3,1,3,4,2])
