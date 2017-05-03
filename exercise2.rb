File.open("./football.dat", "r") do |f|
  #smallest=[]
  difference = []
  f.each_line do |line|
     #smallest =line.split(' ').gsub(" ","").map {|elt| elt.to_i}
     p line.split
    #difference <<  smallest[-4]-smallest[-2] if smallest.length>2
#p line[0]
#p difference
end
  
end