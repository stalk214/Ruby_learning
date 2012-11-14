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
