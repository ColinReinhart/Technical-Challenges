# @param {Integer} outside_temp
# @param {Integer} in_cabin_temp
# @param {Integer} hvac_temp
# @param {Integer} set_temp
# @return {Array<Boolean, Boolean, Boolean>}
def climate_control(outside_temp, in_cabin_temp, hvac_temp, set_temp)
  heat = false
  recirc = false
  fan = false

  heat = true if in_cabin_temp < set_temp

  recirc = (set_temp - outside_temp).abs > (set_temp - in_cabin_temp).abs

  if heat == true
    if in_cabin_temp - hvac_temp <= 10 && set_temp - in_cabin_temp > 10
      fan = true
    # else
      # require 'pry'; binding.pry
    end
  else
    if in_cabin_temp - hvac_temp >= 10 && in_cabin_temp - set_temp > 10
      fan = true
    # else
    #   require 'pry'; binding.pry
    end
  end

  return [heat, recirc, fan]
end

p climate_control(32, 68, 80, 75) #[true, true, false]
p climate_control(90, 72, 60, 68) #[false, true, false]
p climate_control(55, 72, 65, 72) #[false, true, false]
