#text game for learning purposes

#starting point
$i = 0
$j = 0
output_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
#classes
class Gameroom
   
end

class Room1 < Gameroom
    def gameplay
        p "You enter 1 room"
    end
end


class Room2 < Gameroom
    def gameplay
        p "You enter 2 room"
    end
end

class Room3 < Gameroom
    def gameplay
        p "You enter 3 room"
    end
end

class Room4 < Gameroom
    def gameplay
        p "You enter 4 room"
    end
end

class Room5 < Gameroom
    def gameplay
        p "You enter 5 room"
    end
end

class Room6 < Gameroom
    def gameplay
        p "You enter 6 room"
    end
end

class Room7 < Gameroom
    def gameplay
        p "You enter 7 room"
    end
end

class Room8 < Gameroom
    def gameplay
        p "You enter 8 room"
    end
end

class Room9 < Gameroom
    def gameplay
        p "You enter 9 room"
    end
end

class Room10 < Gameroom
    def gameplay
        p "You enter 10 room"
    end
end

class Room11 < Gameroom
    def gameplay
        p "You enter 11 room"
    end
end

class Room12 < Gameroom
    def gameplay
        p "You enter 12 room"
    end
end

class Room13 < Gameroom
    def gameplay
        p "You enter 13 room"
    end
end

class Room14 < Gameroom
    def gameplay
        p "You enter 14 room"
    end
end

class Room15 < Gameroom
    def gameplay
        p "You enter 15 room"
    end
end

class Room16 < Gameroom
    def gameplay
        p "You enter 16 room"
    end
end


#global functions

#Функция output выводит массив с задаваемым на входе положением X
def output(x, y, mas)
  a = mas
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
  return a.map!{|elem| elem.map!{|eleminner| if eleminner == "X" 
    eleminner = '#' 
  else
    eleminner = eleminner
  end
  }}
end
#Функция prompt выводит приглашение при ожидании ввода
def prompt()
  print "> "
end
# приводит вводимый текст к строчным буквам
def normilize_input(word)
  return word.downcase
end
#Выводит ошибку при вводе непредусмотренных значений
def unexpected_input()
  p "This do nothing"
end
#Просит выбрать, куда пойти дальше
def input() 
  $tempi = $i
  $tempj = $j
  $flag = false
  until $flag do
  i = 0
    while i < 10
      puts "There are 4 doors:"
      puts "Left or right or up or down?"
      i += 1
      prompt
      direction = gets.chomp
      if normilize_input(direction) == "left"
      	$tempj = $j - 1
      elsif normilize_input(direction) == "right"
        $tempj = $j + 1
      elsif normilize_input(direction) == "up"
        $tempi = $i - 1
      elsif normilize_input(direction) == "down"
        $tempi = $i + 1
      else
        unexpected_input
        break
      end
      check_walls()
      break
    end
    if i == 10
      p "It`s not your game, dude"
      Process.exit(0)
    end
  end
end
#проверяет, не выходит ли герой за пределы карты
def check_walls()
	if $tempi < 0 || $tempi > 3 || $tempj < 0 || $tempj > 3
		p "You can`t open this door"
		$tempi = $i
		$tempj - $j
	else
		$i = $tempi
		$j = $tempj
		$flag = true
	end
end

#отыгрывает комнату

def whattodo(roomnumber)
  case roomnumber
    when 1
      play = Room1.new
      play.gameplay
    when 2
      play = Room2.new
      play.gameplay
    when 3
      play = Room3.new
     #   play.instance_variable_set(:@x, $a)
     #   play.instance_variable_set(:@y, $b)
      play.gameplay
    when 4
      play = Room4.new
      play.gameplay
    when 5
      play = Room5.new
      play.gameplay
    when 6
      play = Room6.new
      play.gameplay
    when 7
      play = Room7.new
      play.gameplay
    when 8
      play = Room8.new
      play.gameplay
    when 9
      play = Room9.new
      play.gameplay
    when 10
      play = Room10.new
      play.gameplay
    when 11
      play = Room11.new
      play.gameplay
    when 12
      play = Room12.new
      play.gameplay
    when 13
      play = Room13.new
      play.gameplay
    when 14
      play = Room14.new
      play.gameplay
    when 15
      play = Room15.new
      play.gameplay
    when 16
      play = Room16.new
      play.gameplay
  else
    p "don`t know what to do"
  end
end 

#creating game array
numbers = (1..16).to_a.shuffle! # creates array containing numbers from 1 to 16 in random order
gamezone = [(1..4),(1..4),(1..4),(1..4)].map{|range| range.to_a} #Придумать красивую инициализацию массива
gamezone.map!{|elem| elem.map!{|eleminner| eleminner=numbers.pop}} #Заполняет массив цифрами от 1 до 16 без повторов


#showing map
output($i, $j, output_array)
output_array = output($i, $j, output_array)
until $i == 3 && $j == 3 do
  #where to go?
  input()
  output_array = output($i, $j, output_array)
  #output($i, $j)
  #g = gamezone[$i][$j]
  whattodo(gamezone[$i][$j])
end