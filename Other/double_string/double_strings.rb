def double_string(s)
  arr = []
  s.split("").map { |c| 2.times do arr << c end }
  return arr.join("")
end


p double_string("String")
p double_string("Hello World")
p double_string("1234!")
