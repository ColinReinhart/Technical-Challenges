# @param {Integer[]} score
# @return {String[]}
def find_relative_ranks(score)
  hash = {}
  answer = []
  score.sort.reverse.each_with_index { |score, index| hash[score] = index + 1 }
  score.each do |player|
    if hash[player] == 1
      answer << "Gold Medal"
    elsif hash[player] == 2
      answer << "Silver Medal"
    elsif hash[player] == 3
      answer << "Bronze Medal"
    else
      answer << hash[player].to_s
    end
  end
  answer
end

p find_relative_ranks([5,4,3,2,1])
p find_relative_ranks([10,3,8,9,4])
