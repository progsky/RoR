arr = [0,1]

2.upto(100) do |i|
  arr[i] = arr[-1] + arr[-2]
end

puts arr