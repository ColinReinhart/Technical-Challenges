def min_increment_for_unique(nums)
  nums.sort!
  moves = 0

  (1...nums.length).each do |i|
    if nums[i] <= nums[i - 1]
      increment = nums[i - 1] - nums[i] + 1
      nums[i] += increment
      moves += increment
    end
  end

  moves
end

puts min_increment_for_unique([1,2,2]) # Output: 1
puts min_increment_for_unique([3,2,1,2,1,7]) # Output: 6
