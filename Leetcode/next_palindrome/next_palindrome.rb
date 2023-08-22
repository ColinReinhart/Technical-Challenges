def find_next_palindrome(int)
  int += 1
  until int.to_s == int.to_s.reverse do
    int += 1
  end
  return int
end

p find_next_palindrome(123)
p find_next_palindrome(123456)
p find_next_palindrome(66)
p find_next_palindrome(1999991)
p find_next_palindrome(987654321)
p find_next_palindrome(10102548)
