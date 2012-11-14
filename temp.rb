a = 6
b = 3

class Gameroom
    def init
        @ix = x
        @iy = y
    end
end

class Room1 < Gameroom
    def gameplay
        p @ix*@iy
    end
end


class Room2 <Gameroom
    def gameplay
        p @x / @y
    end
end

def whattodo(roomnumber)
case roomnumber
when 1
    play = Room1.new
    play.gameplay
when 2
    play = Room2.new
    play.gameplay
else
    p "don`t know what to do"
end
end

whattodo(1)
whattodo(2)