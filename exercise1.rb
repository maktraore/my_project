File.open("./weather.dat", "r") do |f|
  spread =[]
  f.each_line do |line|
    numbers = line.split(' ').map {|x| begin; Integer(x); rescue; nil; end}.compact
    #x= numbers[2]-numbers[3]
    
    spread << numbers[1]-numbers[2] if numbers.length> 2
    
  end
  p spread.index(spread.min)
  
end
