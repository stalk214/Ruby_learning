#creating game array
numbers = (1..16).to_a.shuffle! # creates array containing numbers from 1 to 16 in random order

gamezone = [(1..4),(1..4),(1..4),(1..4)].map{|range| range.to_a} #Придумать красивую инициализацию массива

gamezone.map!{|elem| elem.map!{|eleminner| eleminner=numbers.pop}} #Заполняет массив цифрами от 1 до 16 без повторов

p gamezone
