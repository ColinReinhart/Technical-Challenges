def pangrams(s)
  h = Hash.new(0)
  wip = s.gsub(" ", "").upcase
  wip.split("").map { |char| h[char] +=1 }
  if h.count == 26
    p "pangram"
  else
    p "not pangram"
  end
end

pangrams("We promptly judged antique ivory buckles for the next prize")
pangrams("We promptly judged antique ivory buckles for the prize")
