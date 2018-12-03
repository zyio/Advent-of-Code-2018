require 'set'
input=File.read('input.txt').split("\n")
freqs = Set[]
sum = 0
loop do
  input.each do |i|
    sum += i.to_r
    if not freqs.add?(sum)
      p sum
      return
    end
  end
end
