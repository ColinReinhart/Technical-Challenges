def character_count(string)
  char_count_hash = {}
  string.each_char do |char|
    if char_count_hash.keys.include?(char)
      char_count_hash[char] += 1
    else
      char_count_hash[char] = 1
    end
  end
  return char_count_hash.sort_by{|key, value| value}.reverse
end

character_count("I really want to work for Wingspan").each do |key, value|
  puts "#{key}: #{value}"
end
