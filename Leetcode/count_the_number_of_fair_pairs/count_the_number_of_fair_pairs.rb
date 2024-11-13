# @param {Integer[]} nums
# @param {Integer} lower
# @param {Integer} upper
# @return {Integer}
def count_fair_pairs(nums, lower, upper)
  nums.sort!
  count = 0

  nums.each_with_index do |num, i|
    min_val = lower - num
    max_val = upper - num

    left_bound = nums.bsearch_index { |x| x >= min_val } || nums.size
    right_bound = nums.bsearch_index { |x| x > max_val } || nums.size

    left_bound = [left_bound, i + 1].max
    count += [0, right_bound - left_bound].max
  end

  count
end

p count_fair_pairs([0,1,7,4,4,5], 3, 6) #6
p count_fair_pairs([1,7,9,2,5], 11, 11) #1
