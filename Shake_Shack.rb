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

  def ingredients
  	 #Add each ingredients price to our total
  	 list_of_ingredients=""
  @ingredients.each do |ingredient|
    list_of_ingredients=list_of_ingredients+"."+ingredient.name
  end
  return list_of_ingredients
end

end

class Ingredient
	 attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
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
		total=0
		count=0
		@milkShakes.each do |milkshake|
			puts "Milkshake#{count+1}: #{milkshake.ingredients} ------price #{milkshake.price_of_milkshake}"
			total=total+milkshake.price_of_milkshake
		end
		puts "Total_price : #{total}"
	end
end


nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
shop=ShakeShop.new
shop.addMilkShakes(nizars_milkshake)
shop.checkout