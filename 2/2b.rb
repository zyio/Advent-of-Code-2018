input=File.read('input.txt').split("\n")

input.each do |xline|
  input.each do |yline|
    if xline.split('').zip(yline.split('')).count {|i,j| i==j} == 25
      out = []
      xline.split('').zip(yline.split('')).count do |i,j|
        out << i if i ==j        
      end
      p out.join
      exit
    end
  end   
end
