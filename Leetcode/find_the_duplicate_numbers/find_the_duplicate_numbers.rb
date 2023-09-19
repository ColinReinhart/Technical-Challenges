def find_duplicate(nums)
  array = []
  nums.each do |num|
    if array.include?(num)
      return num
    else
      array << num
    end
  end
end

p find_duplicate([1,3,4,2,2])
p find_duplicate([3,1,3,4,2])
