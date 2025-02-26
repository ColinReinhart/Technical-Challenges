# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def distinct_numbers(nums, k)
  return [] if nums.empty? || k > nums.size

  counts = Hash.new(0)
  result = []

  # Initialize the first window
  (0...k).each do |i|
    counts[nums[i]] += 1
  end
  result << counts.size

  # Slide the window one element at a time
  (k...nums.size).each do |i|
    # Remove the element leaving the window
    left_val = nums[i - k]
    counts[left_val] -= 1
    counts.delete(left_val) if counts[left_val] == 0

    # Add the new element entering the window
    counts[nums[i]] += 1
    result << counts.size
  end

  result
end

p distinct_numbers([1,2,3,2,2,1,3], 3) #[3,2,2,2,3]
p distinct_numbers([1,1,1,1,2,3,4], 4) #[1,2,3,4]
