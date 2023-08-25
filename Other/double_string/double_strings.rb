def double_string(s)
  s.chars.map { |c| c*2}.join
end


p double_string("String")
p double_string("Hello World")
p double_string("1234!")
