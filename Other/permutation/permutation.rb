def permutation(str)
  arr = str.is_a?(String) ? str.split('') : str
  return [arr.join] if arr.empty?

  permutations = []

  arr.each_with_index do |elem, index|
    next if index > 0 && arr[index] == arr[index - 1]

    remaining_elements = arr[0...index] + arr[index+1..-1]

    permutation(remaining_elements.join('')).each do |perm|
      permutations << [elem] + [perm]
    end
  end
  permutations
end

puts permutation("aabc")

# p permutation('abc')
p permutation('aabc')
