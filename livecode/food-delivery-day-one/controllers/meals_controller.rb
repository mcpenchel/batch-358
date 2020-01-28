require_relative "../views/meals_view"

class MealsController

  def initialize(meal_repository)
    @meal_repository = meal_repository
    @view = MealsView.new
  end

  def list_meals
    @view.list(@meal_repository.all)
  end

  def add_a_meal
    meal_name = @view.ask_name
    meal_price = @view.ask_price

    meal = Meal.new(name: meal_name, price: meal_price)
    @meal_repository.add(meal)
  end


end
