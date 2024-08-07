# @param {String[]} details
# @return {Integer}
def count_seniors(details)
  count = 0
  details.each do |dets|
    if dets.split('')[-4..-3].join('').to_i > 60
      count += 1
    end
  end
  count
end

p count_seniors(["7868190130M7522","5303914400F9211","9273338290F4010"]) #2
p count_seniors(["1313579440F2036","2921522980M5644"]) #0
p count_seniors(["9751302862F0693","3888560693F7262","5485983835F0649","2580974299F6042","9976672161M6561","0234451011F8013","4294552179O6482"]) #4
