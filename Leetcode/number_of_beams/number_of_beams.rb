def number_of_beams(bank)
  beam_count = 0
  walls_with_devices = []
  split = bank.map { |row| row.split('').map { |i| i.to_i } }
  split.each do |r|
    if r.include?(1)
      walls_with_devices << r
    end
  end
  devices_per_wall = []
  walls_with_devices.each { |w| devices_per_wall << w.sum}
  if walls_with_devices.count > 1
    devices_per_wall[0..-2].each_with_index do |w, i|
      beam_count += w * devices_per_wall[i+1]
    end
  else
    return 0
  end
  return beam_count
end

p number_of_beams(["011001","000000","010100","001000"])
p number_of_beams(["000","111","000"])
