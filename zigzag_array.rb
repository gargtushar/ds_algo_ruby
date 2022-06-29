def zig_zag(a=[])
  n = a.length
  i = 1
  while i < n do

    if (a[i - 1] > a[i])
      t = a[i - 1]
      a[i - 1] = a[i]
      a[i] = t
    end

    if((i + 1) < n && (a[i + 1] > a[i]) )
      t = a[i + 1]
      a[i + 1] = a[i]
      a[i] = t
    end
    i += 2
  end
  return a.join(" ")
end

puts zig_zag([4, 3, 7, 8, 6, 2, 1])
puts zig_zag([1, 4, 3, 2])
