# @param {String[]} words
# @param {String} pref
# @return {Integer}
def prefix_count(words, pref)
  count = 0
  size = pref.length - 1
  words.each { |word| count += 1 if word[0..size] == pref }

  count
end

p prefix_count(["pay","attention","practice","attend"], "at") #2
p prefix_count(["leetcode","win","loops","success"], "code") #0
