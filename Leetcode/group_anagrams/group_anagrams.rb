# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  hash = Hash.new { |h, k| h[k] = [] }

  strs.each do |str|
    sorted_str = str.chars.sort.join
    hash[sorted_str] << str
  end
  hash.values
end

p group_anagrams(["eat","tea","tan","ate","nat","bat"])
p group_anagrams([""])
p group_anagrams(["a"])
