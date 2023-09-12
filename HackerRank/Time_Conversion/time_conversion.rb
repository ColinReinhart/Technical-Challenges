def timeConversion(s)
  if s.include?('PM') && s[0..1] != "12"
    s[0..1] = (s[0..1].to_i+12).to_s
  elsif s.include?('AM')
    if s[0..1] == "12"
      s[0..1] = "00"
    end
  end
  s[0..-3]
end

p timeConversion('12:01:00PM')
p timeConversion('12:01:00AM')
