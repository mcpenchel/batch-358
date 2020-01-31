require_relative "repositories/meal_repository"
require_relative "controllers/meals_controller"

require_relative "repositories/customer_repository"
require_relative "controllers/customers_controller"

require_relative "repositories/employee_repository"
require_relative "controllers/sessions_controller"

require_relative "repositories/order_repository"
require_relative "controllers/orders_controller"

require_relative "router"

meal_repository  = MealRepository.new("data/meals.csv")
meals_controller = MealsController.new(meal_repository)

customer_repository  = CustomerRepository.new("data/customers.csv")
customers_controller = CustomersController.new(customer_repository)

employee_repository = EmployeeRepository.new("data/employees.csv")
sessions_controller = SessionsController.new(employee_repository)

order_repository  = OrderRepository.new("data/orders.csv", meal_repository, customer_repository, employee_repository)
orders_controller = OrdersController.new(order_repository, meal_repository, customer_repository, employee_repository)

router = Router.new(meals_controller, customers_controller, sessions_controller, orders_controller)
router.run
