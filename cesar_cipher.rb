# metodo con parametro size
def solve_cipher(input, size)
	default_size=3
  #añado el mensaje en un array
  letras=input.chars
  #puts letras
  mensaj_Decodif=""
  #recorremos el array de letras
  for pos in 0..letras.size-1
  	posicionador=size.to_i
  	#puts letras[pos]
  	#descifro usando numero de letra mas posicionador 
  	descifrado=((letras[pos].ord.to_i)+posicionador).chr
  	#mensaje descifrado
  	mensaj_Decodif=mensaj_Decodif + descifrado
  end
  puts mensaj_Decodif
end

solve_cipher("ifmmp",-1)
solve_cipher("p| uhdo qdph lv grqdog gxfn",-3)