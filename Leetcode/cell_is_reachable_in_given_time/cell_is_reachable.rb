def is_reachable_at_time(sx, sy, fx, fy, t)
  x_diff = fx - sx
  y_diff = fy - sy

  if x_diff.negative?
    x_diff = -x_diff
  end
  if y_diff.negative?
    y_diff = -y_diff
  end

  if sx == fx && sy == fy && 0 < t && t < 2
    false
  elsif x_diff <= t && y_diff <= t
    true
  else
    false
  end
end

p is_reachable_at_time(2, 4, 7, 7, 6)
p is_reachable_at_time(3, 1, 7, 3, 3)
p is_reachable_at_time(1, 4, 1, 2, 1)
