def reverse_array(a, k)
  n = a.length
  k = n if k >n

  i = 0
  while i < n do
    left = i
    right = i + k - 1
    right = n - 1 if ( n - 1) < right
    while(left < right) do
      t = a[left]
      a[left] = a[right]
      a[right] = t
      left += 1
      right -= 1
    end
    i = i + k
  end
  return a.join(" ")
end

puts reverse_array([1, 2, 3, 4, 5, 6, 7, 8, 9], 3)
puts reverse_array([1, 2, 3, 4, 5, 6, 7, 8], 5)
puts reverse_array( [1, 2, 3, 4, 5, 6], 1)
puts reverse_array([1, 2, 3, 4, 5, 6, 7, 8], 10)
