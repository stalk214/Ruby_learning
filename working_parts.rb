a = [[0,0,0,0],[0,"X",0,0],[0,0,0,0],[0,0,0,0]]
b = a.shuffle!
puts "-----------------"
a.each do |x|
print "I "
x.each do |y|
print y 
print " I "
end
puts
puts "-----------------"
end