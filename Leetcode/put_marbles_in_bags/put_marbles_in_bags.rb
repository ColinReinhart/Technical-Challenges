# @param {Integer[]} weights
# @param {Integer} k
# @return {Integer}
def split_into_k_contiguous_groups(weights, k, prefix = [], result = [])
  return result << (prefix + [weights]) if k == 1 && !weights.empty?

  (1..weights.size - k + 1).each do |i|
    group = weights[0...i]
    rest = weights[i..-1]
    split_into_k_contiguous_groups(rest, k - 1, prefix + [group], result)
  end

  result
end

def put_marbles(weights, k)
  max_score = 0
  min_score = Float::INFINITY
  scores = []

  arrays = split_into_k_contiguous_groups(weights, k)

  arrays.each do |arr|
    score = 0
    arr.each do |a|
      score += a[0] + a[-1]
    end
    scores << score
    if score > max_score
      max_score = score
    end
    if score < min_score
      min_score = score
    end
  end

  max_score - min_score
end

p put_marbles([1,3,5,1], 2) #4
p put_marbles([1, 3], 2) #0
