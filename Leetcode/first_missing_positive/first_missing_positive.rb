# @param {Integer[]} nums
# @return {Integer}
def first_missing_positive(nums)
  @x = 1
  sorted = nums.sort
  sort_pos = sorted.select { |num| num > 0 }
  def find_missing(arr)
    if arr[0] != @x
      return @x
    else arr[0] == @x
      @x += 1
      arr.shift
      find_missing(arr)
    end
  end
  find_missing(sort_pos)
end

p first_missing_positive([1,2,0]) # 3
p first_missing_positive([3,4,-1,1]) # 2
p first_missing_positive([7,8,9,11,12]) # 1
