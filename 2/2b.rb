input=File.read('input.txt').split("\n")

twocount=0
threecount=0
input.each do |line|
  x=0
  y=0
  line.split('').uniq.each do |letter|
    if line.split('').count(letter) == 3 and x < 1
      threecount+=1
      x+=1
    elsif line.split('').count(letter) == 2 and y < 1
      twocount+=1
      y+=1
    end
  end
end
p twocount * threecount
