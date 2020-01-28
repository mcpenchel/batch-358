require_relative "repositories/meal_repository"
require_relative "controllers/meals_controller"

require_relative "repositories/customer_repository"
require_relative "controllers/customers_controller"

require_relative "router"

meal_repository = MealRepository.new("data/meals.csv")
meals_controller = MealsController.new(meal_repository)

customer_repository = CustomerRepository.new("data/customers.csv")
customers_controller = CustomersController.new(customer_repository)

router = Router.new(meals_controller, customers_controller)
router.run
