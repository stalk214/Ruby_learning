#text game for learning purposes

#starting point
$i = 0
$j = 0

#global functions

#Функция output выводит массив с задаваемым на входе положением X
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


#creating game array
numbers = (1..16).to_a.shuffle! # creates array containing numbers from 1 to 16 in random order
gamezone = [(1..4),(1..4),(1..4),(1..4)].map{|range| range.to_a} #Придумать красивую инициализацию массива
gamezone.map!{|elem| elem.map!{|eleminner| eleminner=numbers.pop}} #Заполняет массив цифрами от 1 до 16 без повторов


#showing map
output($i, $j)
until $i == 3 && $j == 3 do
#where to go?
input()
output($i, $j)
end