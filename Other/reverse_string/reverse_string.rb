def reverse_string(str, answer)
  string = str.split('')
  if string == []
    return ""
  else
    answer << string.pop
    reverse_string(string.join, answer)
  end
  answer.join
end

p reverse_string("Colin", [])
p reverse_string("covid", [])
