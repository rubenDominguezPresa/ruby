def fizzbuzz(inicio, fin, reglas)
	# bucle for 
	for number in inicio..fin

		if (number.to_i%reglas["FIZZ"]==0)
			puts "FIZZ!"
		elsif (number.to_i%reglas["BUZZ"]==0)
			puts "BUZZ!"
		else puts number
		end
	end
end
puts "introduce el primer numero"
inicio=gets.chomp
puts "introduce el ultimo numero"
fin=gets.chomp
puts "divisor FIZZ"
fizz=gets.chomp
puts "divisor BUZZ"
buzz=gets.chomp
reglas={}
reglas["FIZZ"]=fizz.to_i
reglas["BUZZ"]=buzz.to_i
fizzbuzz(inicio, fin, reglas)

