class Item
	attr_reader :item, :price
	def initialize(item, price)
		@item = item
		@price = price
	end
end

class Items
	def initialize()
		@items=[ ]
		item1=Item.new("apples",10)
		item2=Item.new("oranges",5)
		item3=Item.new("banana",20)
		item4=Item.new("watermelon",50)
		item5=Item.new("rice",1)
		item6=Item.new("vacuum cleaner",150)
		item7=Item.new("anchovies",2)
		#puts item7.item
		@items.push(item1)
		#puts @items[0].item
		@items.push(item2)
		@items.push(item3)
		@items.push(item4)
		@items.push(item5)
		@items.push(item6)
		@items.push(item7)
	end
	def getItem(item)
		for itemP in 0..@items.size-1
			#puts @items[itemP].item
			if ((@items[itemP].item)==item)
				#puts @items[itemP].item
				return @items[itemP]
			end
		end
	end
end
#Class shoppingCart
class ShoppingCart
	def initialize()
		
		@cart=[ ]
		@items= Items.new
	end

	def add(item)
		@cart.push(@items.getItem(item))
	end

	def checkout()
		total=0
		#puts @cart
		puts "Shopping Cart"
		for item in 0..@cart.size-1
			puts "#{@cart[item].item}  #{@cart[item].price}"
			total =total+@cart[item].price
		end
		puts "Total: #{total}"
	end
end

cart= ShoppingCart.new
cart.add("apples")
cart.add("banana")
cart.checkout