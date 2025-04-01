# @param {Integer[]} weights
# @param {Integer} k
# @return {Integer}
def put_marbles(weights, k)
  pair_sums = []
  (0...weights.size - 1).each do |i|
    pair_sums << weights[i] + weights[i + 1]
  end

  sorted = pair_sums.sort

  max_score = sorted.last(k - 1).sum
  min_score = sorted.first(k - 1).sum

  max_score - min_score
end

p put_marbles([1,3,5,1], 2) #4
p put_marbles([1, 3], 2) #0
