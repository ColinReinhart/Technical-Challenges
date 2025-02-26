# @param {String} sentence
# @return {Boolean}
def is_circular_sentence(sentence)
  arr = sentence.split(' ')

  if sentence.include?(' ')
    arr.each_with_index do |word, i|
      if i == arr.length - 1
        return false unless word[-1] == arr[0][0]
      else
        return false unless word[-1] == arr[i + 1][0]
      end
    end
    return true
  else

    return sentence[0] == sentence[-1]
  end
end

p is_circular_sentence("leetcode exercises sound delightful") #true
p is_circular_sentence("eetcode") #true
p is_circular_sentence("leetcode") #false
p is_circular_sentence("Leetcode is cool") #false
p is_circular_sentence("Leetcode eisc cool") #false
