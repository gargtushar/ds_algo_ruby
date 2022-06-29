def sort_arr(a = [])
  zero_count = 0
  one_count = 0
  two_count = 0

  a.each do |i|
    case i
    when 0
      zero_count += 1
    when 1
      one_count += 1
    when 2
      two_count += 1
    end
  end

  a = []
  while zero_count > 0 do
    a.push(0)
    zero_count -= 1
  end

  while one_count > 0 do
    a.push(1)
    one_count -= 1
  end

  while two_count > 0 do
    a.push(2)
    two_count -= 1
  end

  return a
end


puts sort_arr([0,1,1,0,2,0,0,2,1,0]).join(" ")
