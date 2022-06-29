# n = gets.chomp.to_i
# a = (gets.strip.split(" ")).map(&:to_i)

a = [16, 17, 4, 3, 5, 2]

def leader(a)
  result = []
  result.push(a.last)
  element = a.last
  (a.length - 2).downto(0) do |i|
    if a[i] > element
      result.push(a[i])
      element = a[i]
    end
  end
  puts result.reverse.join(" ");
end


leader(a)
leader([1,2,3,4,0])
