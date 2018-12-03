input=File.read('input.txt').split("\n")
sum = 0
input.each do |i|
  sum += i.to_r
end
p sum.to_i
