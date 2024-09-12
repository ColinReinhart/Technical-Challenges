# @param {String} allowed
# @param {String[]} words
# @return {Integer}
def count_consistent_strings(allowed, words)
  require 'pry'; binding.pry
end

p count_consistent_strings("ab", ["ad","bd","aaab","baa","badab"]) #2
# p count_consistent_strings("abc", ["a","b","c","ab","ac","bc","abc"]) #7
# p count_consistent_strings("cad", ["cc","acd","b","ba","bac","bad","ac","d"]) #4
