def count_palindromic_subsequence(s)
  wip = []
  arr = s.split('')
  outer = []
  inner = []
  arr.each_with_index do |c, i|
    if outer.include?(c)
    else
      outer << c
       if arr[i+2..-1] != nil && arr[i+2..-1].include?(c)
        arr.uniq.each do |u|
          wip << [c, u, c]
        end
       end
    end
  end
  require 'pry'; binding.pry
  wip.count
end

# p count_palindromic_subsequence("aabca")
# p count_palindromic_subsequence("adc")
p count_palindromic_subsequence("bbcbaba")
