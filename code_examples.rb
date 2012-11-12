#gamezone = Array.new(3,3)

=begin
s.each do |x|
x.each do |y|
puts y
end
end
=end

=begin
maccuB = [1,2,3,4,5]
maccuB.push( 6 )
maccuB      #-> [1,2,3,4,5,6]
maccuB.pop  #-> 6
maccuB      #-> [1,2,3,4,5]
=end

=begin
maccuB = [1,2,3,4,5]
maccuB.map{ |elem|  elem**2 }  #-> [1,4,9,16,25]
=end

=begin
cumBoJIbI = ['a'..'z','A'..'Z','0'..'9'].map{ |range| range.to_a }.flatten
puts
 (0...8).map{ cumBoJIbI[ rand( cumBoJIbI.size ) ] }.join
=end

=begin
a = [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]
b = a.shuffle!
a.each do |x|
print "I "
x.each do |y|
print y 
print " I "
end
puts
puts "________"
end
=end
