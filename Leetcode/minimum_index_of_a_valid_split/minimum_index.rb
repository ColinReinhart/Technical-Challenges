# @param {Integer[]} nums
# @return {Integer}
def minimum_index(nums)
  def dominant_key_if_valid(hash, total_length)
    return nil if hash.empty?

    max_pair = hash.max_by { |_, v| v }
    key, count = max_pair

    count * 2 > total_length ? key : nil
  end

  full_count = Hash.new(0)
  nums.each { |num| full_count[num] += 1 }

  dom = dominant_key_if_valid(full_count, nums.length)
  return -1 unless dom

  left_count = Hash.new(0)
  total = full_count[dom]

  nums.each_with_index do |num, idx|
    left_count[num] += 1
    left_size = idx + 1
    right_size = nums.length - left_size

    left_dom = left_count[dom]
    right_dom = total - left_dom

    if left_dom * 2 > left_size && right_dom * 2 > right_size
      return idx
    end
  end

  -1
end

p minimum_index([1,2,2,2]) #2
p minimum_index([2,1,3,1,1,1,7,1,2,1]) #4
p minimum_index([3,3,3,3,7,2,2]) #-1
