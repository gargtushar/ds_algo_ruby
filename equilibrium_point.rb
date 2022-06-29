def find_eq_point(a = [])

  i = 0
  n = a.length;
  start = 0
  emd = n - 1
  left_sum = 0
  right_sum = 0

  return a.last if n == 1
  (i..n).to_a.each do |i|
    return a[start] if(start == emd && right_sum == left_sum)
    return -1 if(start == emd)

    if left_sum > right_sum
      right_sum += a[emd]
      emd -= 1
    elsif right_sum > left_sum
      left_sum += a[start]
      start += 1
    else
      right_sum += a[emd]
      emd -= 1
    end
  end
end

puts find_eq_point [2, 3, 4, 1, 4, 5]
puts find_eq_point [1, 2, 3]
puts find_eq_point [1, 4, 2, 5]
puts find_eq_point [1, 5, 1]
puts find_eq_point [15]
