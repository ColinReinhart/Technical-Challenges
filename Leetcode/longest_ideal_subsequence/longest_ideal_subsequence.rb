# @param {String} s
# @param {Integer} k
# @return {Integer}
def longest_ideal_string(s, k)
  longest_length = 0

  s.each_char.with_index do |char, i|
    subsequence = char
    j = i + 1

    while j < s.length && (s[j].ord - subsequence[-1].ord).abs <= k
      subsequence += s[j]
      j += 1
    end
    longest_length = [longest_length, subsequence.length].max
  end

  longest_length
end

p longest_ideal_string("acfgbd", 2)
# p longest_ideal_string("abcd", 3)
# p longest_ideal_string("pvjcci", 4)
