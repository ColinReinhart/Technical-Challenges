require 'set'

def replace_words(dictionary, sentence)
  dictionary = dictionary.sort
  set = dictionary.to_set
  words = sentence.split(" ")

  words.map! do |word|
    dictionary.each do |root|
      if word.start_with?(root)
        word = root
        break
      end
    end
    word
  end
  words.join(' ')
end

p replace_words(["cat","bat","rat"], "the cattle was rattled by the battery")
p replace_words(["a","b","c"], "aadsfasf absbs bbab cadsfafs")
p replace_words(["a", "aa", "aaa", "aaaa"], "a aa a aaaa aaa aaa aaa aaaaaa bbb baba ababa")
p replace_words(["catt","cat","bat","rat"], "the cattle was rattled by the battery")
