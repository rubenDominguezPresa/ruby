class Ingredient
	attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end
#class MilkShake
class MilkShake
  def initialize
    @base_price = 3
    @ingredients = [ ]    
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def price_of_milkshake
  #Let's establish what our counter should be before we start adding ingredients into the mix
  total_price_of_milkshake = @base_price
  #Add each ingredients price to our total
  		@ingredients.each do |ingredient|
    		total_price_of_milkshake += ingredient.price
  		end
  	#return  our total price to whoever called for it
   total_price_of_milkshake
   end
end
#clase ShakeShop
class ShakeShop
	def initialize
		@milkShakes=[ ]
	end
	def addMilkShakes(my_milkShake)
		@milkShakes.push(my_milkShake)
	end
	def checkout()
		total=0;
		for item in 0..@milkShakes.size-1
			puts "shake#{item} price #{@milkShakes[item].price_of_milkshake}"
			total=total+@milkShakes[item].price_of_milkshake
		end
		puts "Total: #{total}"
	end
end

nizars_milkshake1 = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake1.add_ingredient(banana)
nizars_milkshake1.add_ingredient(chocolate_chips)

nizars_milkshake2 = MilkShake.new
nizars_milkshake2.add_ingredient(banana)
#puts nizars_milkshake.price_of_milkshake
nizars_sakeShop= ShakeShop.new
nizars_sakeShop.addMilkShakes(nizars_milkshake1)
nizars_sakeShop.addMilkShakes(nizars_milkshake2)
nizars_sakeShop.checkout