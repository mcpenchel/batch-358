class Router

  def initialize(meals_controller, customers_controller)
    @running = true
    @meals_controller = meals_controller
    @customers_controller = customers_controller
  end

  def run
    while @running
      print_actions
      user_input = gets.chomp
      route_to(user_input)
    end
  end

  private
  def print_actions
    puts "------------------"
    puts "------------------"
    puts "WELCOME TO AMARELINHO!!"
    puts "------------------"
    puts "1 - List meals"
    puts "2 - Add a meal"
    puts "3 - List customers"
    puts "4 - Add a customer"
    puts "9 - Exit"
    puts "------------------"
  end

  def route_to(user_input)
    case user_input
    when "1"
      @meals_controller.list_meals
    when "2"
      @meals_controller.add_a_meal
    when "3"
      @customers_controller.list_customers
    when "4"
      @customers_controller.add_a_customer
    when "9"
      @running = false
    else
      puts "Invalid action, please choose another one."
    end
  end

end
