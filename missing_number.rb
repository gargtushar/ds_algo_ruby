def find_number(a = [])
  total = 1
  i = 2
  n = a.length
  while(i < (n + 1)) do
    total += i;
    total -= a[i - 2]
    i += 1
  end
  return total
end


puts find_number([1, 2, 4, 6, 3, 7, 8])
