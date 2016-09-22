def fizzbuzz(inicio, fin, reglas)
	# bucle for 
	puts ""
	for number in inicio..fin
		result=number
		if (number.to_i%reglas["FIZZ"]==0 && number.to_i%reglas["BUZZ"]==0)
			result="FIZZBUZZ"
		elsif (number.to_i%reglas["FIZZ"]==0)
			result="FIZZ"
		elsif (number.to_i%reglas["BUZZ"]==0)
			result="BUZZ"
		end
		puts result
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

