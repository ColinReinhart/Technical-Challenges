# @param {String} s1
# @param {String} s2
# @return {String[]}
def uncommon_from_sentences(s1, s2)
  hash = Hash.new(0)

  s1.split(' ').each { |word| hash[word] += 1 }
  s2.split(' ').each { |word| hash[word] += 1 }

  hash.select { |key, value| value == 1 }.keys
end

p uncommon_from_sentences("this apple is sweet", "this apple is sour") #["sweet","sour"]
p uncommon_from_sentences("apple apple", "banana") #["banana"]
