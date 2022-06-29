def re_arrange_array(a = [])
  flag = true
  i = 0
  n = a.length
  temp = []
  small = 0
  large = n - 1
  while(i < n) do
    if flag
      temp[i] = a[large]
      large -= 1
    else
      temp[i] = a[small]
      small += 1
    end
    flag = !flag
    i += 1
  end

  return temp.join(" ")
end

puts re_arrange_array([1, 2, 3, 4, 5, 6, 7])
