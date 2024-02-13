def first_palindrome(words)
  words.each { |word| return word if word == word.reverse }
  return ""
end

p first_palindrome(["abc","car","ada","racecar","cool"])
p first_palindrome(["notapalindrome","racecar"])
p first_palindrome(["def","ghi"])
