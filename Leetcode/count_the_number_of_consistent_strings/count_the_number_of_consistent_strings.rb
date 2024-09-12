require 'set'
# @param {String} allowed
# @param {String[]} words
# @return {Integer}
def count_consistent_strings(allowed, words)
  allowed_set = allowed.chars.to_set
  words.count do |word|
    word.chars.all? { |ch| allowed_set.include?(ch) }  # Check if all characters are in the allowed set
  end
end

p count_consistent_strings("ab", ["ad","bd","aaab","baa","badab"]) #2
p count_consistent_strings("abc", ["a","b","c","ab","ac","bc","abc"]) #7
p count_consistent_strings("cad", ["cc","acd","b","ba","bac","bad","ac","d"]) #4
