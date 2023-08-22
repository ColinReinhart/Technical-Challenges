# @param {Character[]} letters
# @param {Character} target
# @return {Character}
def next_greatest_letter(letters, target)
    abc = ('a'..'z').to_a
    hash = {}
    target_index = 0
    letters_with_index = {}
    abc.each_with_index { |l, i| hash[l] = i }
    hash.each do | letter, index |
        if letter == target
            target_index = index
        end
    end
    hash.each do |letter, index|
        letters.each do |l|
            if l == letter
                letters_with_index[letter] = index
            end
        end
    end
    letters_with_index.each do |let, indx|
        if indx > target_index
            return let
        end
    end
    return letters[0]
end

p next_greatest_letter(["c","f","j"], "a")
p next_greatest_letter(["c","f","j"], "c")
p next_greatest_letter(["x","x","y","y"], "z")