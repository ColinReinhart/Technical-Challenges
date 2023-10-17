def caesarCipher(s, k)
  split = s.split('')
  alph = ('a'..'z').to_a
  mod_alph = ('a'..'z').to_a
  arr = []
  k.times do
    mod_alph << mod_alph[0]
    mod_alph.shift
  end
  split.each do |char|
    if alph.include?(char.downcase)
      alph.each_with_index do |c, i|
        if char == char.upcase
          if c == char.downcase
            arr << mod_alph[i].upcase
          end
        elsif char == c
          arr << mod_alph[i]
        end
      end
    else
      arr << char
    end
  end
  return arr.join('')
end

p caesarCipher("There's-a-starman-waiting-in-the-sky", 3)
