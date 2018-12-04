input=File.read('input.txt').split("\n")

covered = Hash.new(0)

input.map{|x| x.split(' ')[2].chomp(":")}.each_with_index do |coords,index|
  
  size = input[index].split(' ')[3]
  claim = input[index].split(' ')[0].delete('#')
  yout = []
  xout = []
  y = coords.split(',')[0].to_i
  x = coords.split(',')[1].to_i
  width = size.split('x')[0].to_i
  height = size.split('x')[1].to_i

  i = 0
  width.times do
    yout << (y + i)
    i += 1
  end

  i = 0
  height.times do
    xout << (x + i)
    i +=1
  end

  yout.each do |y|
    xout.each do |x|
      covered["[#{y},#{x}]"] += 1
    end
  end
end

input.map{|x| x.split(' ')[2].chomp(":")}.each_with_index do |coords,index|
  size = input[index].split(' ')[3]
  claim = input[index].split(' ')[0].delete('#')
  yout = []
  xout = []
  tmp = []
  y = coords.split(',')[0].to_i
  x = coords.split(',')[1].to_i
  width = size.split('x')[0].to_i
  height = size.split('x')[1].to_i

  i = 0
  width.times do
    yout << (y + i)
    i += 1
  end

  i = 0
  height.times do
    xout << (x + i)
    i +=1
  end

  yout.each do |y|
    xout.each do |x|
      tmp << covered["[#{y},#{x}]"] 
      covered["[#{y},#{x}]"] += 1
      tmp << covered["[#{y},#{x}]"] 
    end
  end
  p claim if tmp.count(1) == tmp.count(2) and (tmp.count(1) + tmp.count(2)) == tmp.size
end
