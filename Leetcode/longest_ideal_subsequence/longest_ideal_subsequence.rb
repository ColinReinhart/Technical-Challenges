# @param {String} s
# @param {Integer} k
# @return {Integer}
def longest_ideal_string(s, k)
  arr = {}
  wip = {}
  hash = ('a'..'z').each_with_object({}).with_index(1) { |(char, h), pos| h[char] = pos }
  split = s.split('')
  split.each { |char| wip[char] = hash[char] }

  wip.each_with_index do | (key, v), index |
    if arr == {}
      arr[key] = v
    elsif v - arr.values[- 1] <= k
      arr[key] = v
    end
  end

    arr.length

end

p longest_ideal_string("acfgbd", 2)
p longest_ideal_string("abcd", 3)
