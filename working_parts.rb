#function that outputs game area with coordinates of hero

def output(x, y)

  a = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
  a[x][y] = "X"
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
end
#----------------------------------------------
#creating game array
numbers = (1..16).to_a.shuffle! # creates array containing numbers from 1 to 16 in random order
gamezone = [(1..4),(1..4),(1..4),(1..4)].map{|range| range.to_a} #Придумать красивую инициализацию массива
gamezone.map!{|elem| elem.map!{|eleminner| eleminner=numbers.pop}} #Заполняет массив цифрами от 1 до 16 без повторов
#----------------------------------------------------------------------------------------------
def whattodo(roomnumber)
case roomnumber
when 1
    play = Room1.new
    play.instance_variable_set(:@x, $a)
    play.instance_variable_set(:@y, $b)
    play.gameplay
when 2
    play = Room2.new
    play.instance_variable_set(:@x, $a)
    play.instance_variable_set(:@y, $b)
    play.gameplay
else
    p "don`t know what to do"
end
end
#-----------------------------------------------
class Gameroom
    def init
        @x
        @y
    end
end

class Room1 < Gameroom
    def gameplay
        p @x * @y
    end
end
