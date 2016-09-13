def fizzbuzz(inicio, fin, reglas)
	for number in 0..100
		if (number.module(reglas[FIZZ])==0)
			puts "FIZZ!"
		elseif (number%reglas[BUZZ]==0)
			puts "BUZZ!"
	end
end
puts "introduce el primer numero"
inicio=gets.chomp
puts "introduce el ultimo numero"
fin=gets.chomp
puts "divisor FIZZ"
fizz=get.chomp
puts "divisor BUZZ"
buzz=puts.chomp
reglas[FIZZ]=fizz
reglas[BUZZ]=buzz
fizzbuzz(inicio, fin, reglas)

