# @param {String[]} dictionary
# @param {String} sentence
# @return {String}
def replace_words(dictionary, sentence)
  arr = []
  split = sentence.split(" ")
  split.each_with_index do |word, i|
    dictionary.each do |root|
      if word.split('')[0..root.length - 1].join('') == root
        split[i] = root
      end
    end
  end
  split.join(' ')
end

p replace_words(["cat","bat","rat"], "the cattle was rattled by the battery")
p replace_words(["a","b","c"], "aadsfasf absbs bbab cadsfafs")
