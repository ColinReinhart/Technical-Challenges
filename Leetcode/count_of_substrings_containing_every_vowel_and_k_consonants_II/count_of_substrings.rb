require 'set'

def count_of_substrings(word, k)
  vowels = Set.new(['a', 'e', 'i', 'o', 'u'])
  total = 0
  left = 0
  vowel_count = Hash.new(0)
  consonant_count = 0

  (0...word.length).each do |right|
    char = word[right]

    # Update counts for vowels and consonants
    if vowels.include?(char)
      vowel_count[char] += 1
    else
      consonant_count += 1
    end

    # Shrink the window if consonant count exceeds k
    while consonant_count > k
      left_char = word[left]
      if vowels.include?(left_char)
        vowel_count[left_char] -= 1
        vowel_count.delete(left_char) if vowel_count[left_char] == 0
      else
        consonant_count -= 1
      end
      left += 1
    end

    # Only count substrings when all vowels are present and consonant count matches k
    total += 1 if vowel_count.size == 5 && consonant_count == k
  end

  total
end

p count_of_substrings("aeioqq", 1) #0
p count_of_substrings("aeiou", 0) #1
p count_of_substrings("ieaouqqieaouqq", 1) #3
