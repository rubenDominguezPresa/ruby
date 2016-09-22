class ShoppingCart
  def initialize
    @items = []	
  end
  def add_item(item)
  	@items.push(item)
      #Add your item to @items
  end
  def checkout
  	total=0;
  	puts "Cart:"
  	for cart in 0..@items.size-1
  		#total de la cesta
  		puts "#{@items[cart].name}"
  		total=total + @items[cart].price
  	end
  	if @items.size>5
  		#mas de 5 productos hacemos el 10%
  		total = total - total*10/100
  	end
  	puts "Your total today is #{total}. Have a nice day!"
  end
end

#clase principal de items
class Item
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
      return @price
      #Your beautiful code goes here
  end
end

#clase Houseware implementa item
class Houseware < Item
  def price
  	#puts "entro en Houseware #{name}:#{price}"
  	if @price>100
  		#descuento del 5% en productos de mas de 100
  		puts "discount 5% in #{@name}"
  		@price=(@price-(@price*5/100))
  	
  	else
  		@price=@price
  	end   
      #Hmmm maybe this changes somehow..
  end
end


#clase Fruit implementa item

class Fruit < Item
  def price
   
      if (Time.now.wday>=4)
      	#descuento de 10% los fines de semana ( dias 6 y 7 de la semana)
      	puts "discount 10% weekends in #{@name}"
      	@price=(@price-(@price*10/100))
      end
  
  	return @price
      #Something special may go here too...
	  
   end
end

#ejecucion
#cargamos los items
banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)
#inicializa cart y añade productos
joshs_cart = ShoppingCart.new
joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.add_item(banana)
joshs_cart.add_item(vaccuum)
joshs_cart.checkout
