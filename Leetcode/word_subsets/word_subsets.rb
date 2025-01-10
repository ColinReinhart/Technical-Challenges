# @param {String[]} words1
# @param {String[]} words2
# @return {String[]}
def word_subsets(words1, words2)
  answers = []
  hash2 = Hash.new(0)

  words2.each { |word| word.split('').each { |char| hash2[char] += 1 } }

  words1.each do |word|
    hash = Hash.new(0)
    word.split('').each { |char| hash[char] += 1 }

    is_subset = true

    hash2.each do |k,v|
      if hash[k] >= v
        # do nothing
      else
        is_subset = false
        break
      end
    end
    answers << word unless is_subset == false
  end

  answers
end

p word_subsets(["amazon","apple","facebook","google","leetcode"], ["e","o"]) #["facebook","google","leetcode"]
p word_subsets(["amazon","apple","facebook","google","leetcode"], ["l","e"]) #["apple","google","leetcode"]
