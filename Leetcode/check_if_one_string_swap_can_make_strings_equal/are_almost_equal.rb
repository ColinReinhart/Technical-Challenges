# @param {String} s1
# @param {String} s2
# @return {Boolean}
def are_almost_equal(s1, s2)
  return true if s1 == s2 #start by checking to see if strings are already equal

  #Check to make sure both words have the same letters
  hash1 = Hash.new(0)
  s1.split('').each { |x| hash1[x] += 1 }
  hash2 = Hash.new(0)
  s2.split('').each { |x| hash2[x] += 1 }
  return false if hash1 != hash2

  #Swap characters and check
  split = s1.split('')
  left = 0
  right = 1
  until left == split.count do
    split[left], split[right] = split[right], split[left]
    return true if split.join('') == s2
    split = s1.split('')
    if right == split.length
      left += 1
      right = left + 1
    else
      right += 1
    end
  end

  #return false if after swapping each letter strings are still not equal
  false
end

p are_almost_equal("bank", "kanb") #true
p are_almost_equal("attack", "defend") #false
p are_almost_equal("kelb", "kelb") #true
p are_almost_equal("bank", "knab") #false
