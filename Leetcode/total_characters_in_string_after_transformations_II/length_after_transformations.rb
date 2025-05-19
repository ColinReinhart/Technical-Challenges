# @param {String} s
# @param {Integer} t
# @param {Integer[]} nums
# @return {Integer}
MOD = 10**9 + 7

def length_after_transformations(s, t, nums)
  freq = Array.new(26, 0)
  s.each_char { |ch| freq[ch.ord - 'a'.ord] += 1 }

  memo = {}

  compute_length = ->(ch_idx, steps) do
    return 1 if steps == 0
    key = [ch_idx, steps]
    return memo[key] if memo.key?(key)

    len = 0
    start = (ch_idx + 1) % 26
    nums[ch_idx].times do |i|
      len = (len + compute_length.call((start + i) % 26, steps - 1)) % MOD
    end

    memo[key] = len
  end

  total = 0
  (0...26).each do |i|
    if freq[i] > 0
      total = (total + freq[i] * compute_length.call(i, t)) % MOD
    end
  end

  total
end

p length_after_transformations("abcyy", 2, [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2]) #7 "cdeabab"
p length_after_transformations("azbk", 1, [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]) #8 "bcabcdlm"
