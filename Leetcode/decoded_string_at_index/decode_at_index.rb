def decode_at_index(s, k)
  require 'pry'; binding.pry
  abc = [*'a'..'z']
  num = [*0..9]
  arr = s.split("")
  temp = []
  arr.each do |char|
    if temp.count > k
        return temp[k-1]
    elsif abc.include?(char)
      temp << char
    elsif num.include?(char.to_i)
      require 'pry'; binding.pry
      temp = temp*char.to_i
    else
    end
  end
  return temp[k-1]
end


# p decode_at_index("leet2code3", 10)
# p decode_at_index("ha22", 5)
# p decode_at_index("a2345678999999999999999", 1)
p decode_at_index("y959q969u3hb22odq595", 222280369)
