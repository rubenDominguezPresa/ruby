frase={}
def ordena(frase)
	#puts frase
	for pos in 0..frase.length
		menor=pos
		#puts menor
		for pos2 in 1..frase.length-1
			#puts frase[pos2+1]
			if ((frase[pos2].to_s.upcase)<(frase[menor].to_s.upcase))
				menor=pos2
			end

			if (pos!=menor)
				aux=frase[pos]
				frase[pos]=frase[menor]
				frase[menor]=aux
			end
		end
	end
end
puts "introduce frase"
frase=gets.chomp.split(" ");
ordena(frase)
for pos3 in 0..frase.length
	print frase[pos3]
end 


