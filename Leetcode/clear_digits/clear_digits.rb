# @param {String} s
# @return {String}
def clear_digits(s)
  stack = []

  s.each_char do |char|
    if char.match?(/\d/) # If char is a digit
      stack.pop unless stack.empty? # Remove the closest non-digit character
    else
      stack.push(char) # Push non-digit characters to stack
    end
  end

  stack.join
end

p clear_digits("abc") #"abc"
p clear_digits("cb34") #""
