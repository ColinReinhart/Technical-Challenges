# @param {String[]} words
# @return {Integer[]}
def sum_prefix_scores(words)
  require 'pry'; binding.pry
end

p sum_prefix_scores(["abc","ab","bc","b"]) #[5,4,3,2]
p sum_prefix_scores(["abcd"]) #[4]
