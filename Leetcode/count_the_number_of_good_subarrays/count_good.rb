# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_good(nums, k)
  good_subarrays = 0
  left = 0
  right = 1

  def pairs_count(arr)
    pairs = 0
    arr.each_with_index do |num,idx|
      arr[idx + 1..-1].each do |n|
        pairs += 1 if num == n
      end
    end
    return pairs
  end

  until left == nums.length - 1
    good_subarrays += 1 if pairs_count(nums[left..right]) >= k
    if right < nums.count - 1
      right += 1
    else
      left += 1
      right = left + 1
    end
  end

  good_subarrays
end

p count_good([1,1,1,1,1], 10) #1
p count_good([3,1,4,3,2,2,4], 2) #4
