def min_operations(nums)
  operations = 0
  while nums != nums.uniq || nums.length - 1 != nums.max - nums.min do
    if nums == nums.uniq && nums.length - 1 == nums.max - nums.min
      operations
    elsif nums != nums.uniq
      nums = nums.uniq
      operations += 1
    elsif nums.length - 1 < nums.max - nums.min
      x = (nums.max - nums.min) - (nums.length - 1)
      y = nums.max - x
      nums[-1] = y
      operations += 1
    end
  end
  operations
end


# p min_operations([4,2,5,3])
p min_operations([1,2,3,5,6])
# p min_operations([1,1,2,3,5,6])
# p min_operations([1, 5, 7, 10])
# p min_operations([1,10,100,1000])
