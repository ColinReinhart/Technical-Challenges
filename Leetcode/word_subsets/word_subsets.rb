def word_subsets(words1, words2)
  answers = []
  hash2 = Hash.new(0)

  words2.each do |word|
    temp_hash = Hash.new(0)
    word.split('').each { |char| temp_hash[char] += 1 }
    temp_hash.each { |k, v| hash2[k] = [hash2[k], v].max }
  end

  words1.each do |word|
    hash = Hash.new(0)
    word.split('').each { |char| hash[char] += 1 }

    is_subset = true

    hash2.each do |k, v|
      if hash[k] >= v
        next
      else
        is_subset = false
        break
      end
    end

    answers << word if is_subset
  end

  answers
end

p word_subsets(["amazon","apple","facebook","google","leetcode"], ["e","o"]) #["facebook","google","leetcode"]
p word_subsets(["amazon","apple","facebook","google","leetcode"], ["l","e"]) #["apple","google","leetcode"]
