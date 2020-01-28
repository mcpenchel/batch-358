class MealsView

  def list(meals)
    meals.each do |meal|
      puts "#{meal.id}. #{meal.name}"
    end
  end

  def ask_name
    puts "What is the name of the meal?"
    gets.chomp
  end

  def ask_price
    puts "What is the price of the meal?"
    gets.chomp.to_i
  end

end
