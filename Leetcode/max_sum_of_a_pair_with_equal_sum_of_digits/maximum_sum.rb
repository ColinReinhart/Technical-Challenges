# @param {Integer[]} nums
# @return {Integer}
def maximum_sum(nums)
  pair_sums = [-1] # Start with -1 to return if no valid pairs exist
  hash = Hash.new { |h, k| h[k] = [] } # Hash where keys are digit sums, values are indices

  # Compute digit sums and populate hash
  nums.each_with_index do |num, i|
    digit_sum = num.digits.sum # Faster than `x.to_s.split('').map(&:to_i).sum`
    hash[digit_sum] << i
  end

  # Iterate through hash and sum the largest two numbers for each digit sum group
  hash.each_value do |indices|
    if indices.size >= 2
      max1, max2 = indices.max_by(2) { |idx| nums[idx] } # Get top 2 largest numbers
      pair_sums << nums[max1] + nums[max2]
    end
  end

  pair_sums.max # Return the highest pair sum
end

p maximum_sum([18,43,36,13,7]) == 54
p maximum_sum([10,12,19,14]) == -1
p maximum_sum([368,369,307,304,384,138,90,279,35,396,114,328,251,364,300,191,438,467,183]) == 835
p maximum_sum([279,169,463,252,94,455,423,315,288,64,494,337,409,283,283,477,248,8,89,166,188,186,128]) == 872
