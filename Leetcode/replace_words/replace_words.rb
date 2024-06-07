# @param {String[]} dictionary
# @param {String} sentence
# @return {String}
def replace_words(dictionary, sentence)
  split = sentence.split(" ")
  split.each_with_index do |word, i|
    dictionary.sort.each do |root|
      if word.split('')[0..root.length - 1].join('') == root
        split[i] = root
        break
      end
    end
  end
  split.join(' ')
end

# p replace_words(["cat","bat","rat"], "the cattle was rattled by the battery")
# p replace_words(["a","b","c"], "aadsfasf absbs bbab cadsfafs")
# p replace_words(["a", "aa", "aaa", "aaaa"], "a aa a aaaa aaa aaa aaa aaaaaa bbb baba ababa")
p replace_words(["catt","cat","bat","rat"], "the cattle was rattled by the battery")
