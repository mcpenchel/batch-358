class Router

  def initialize(meals_controller, customers_controller, sessions_controller)
    @running = true
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @sessions_controller = sessions_controller
  end

  def run
    employee = @sessions_controller.sign_in

    while @running
      if employee.manager?
        print_manager_actions
        user_input = gets.chomp
        route_manager_to(user_input)
      else
        print_delivery_guy_actions
        user_input = gets.chomp
        route_delivery_guy_to(user_input)
      end
    end
  end

  private
  def print_manager_actions
    puts "------------------"
    puts "------------------"
    puts "WELCOME TO AMARELINHO!!"
    puts "------------------"
    puts "1 - List meals"
    puts "2 - Add a meal"
    puts "3 - List customers"
    puts "4 - Add a customer"
    puts "8 - Sign out"
    puts "9 - Exit"
    puts "------------------"
  end

  def print_delivery_guy_actions
    puts "------------------"
    puts "------------------"
    puts "WELCOME TO AMARELINHO!!"
    puts "------------------"
    puts "1 - List all undelivered orders"
    puts "2 - Mark an order as delivered"
    puts "8 - Sign out"
    puts "9 - Exit"
    puts "------------------"
  end

  def route_manager_to(user_input)
    case user_input
    when "1"
      @meals_controller.list_meals
    when "2"
      @meals_controller.add_a_meal
    when "3"
      @customers_controller.list_customers
    when "4"
      @customers_controller.add_a_customer
    when "8"
      self.run
    when "9"
      @running = false
    else
      puts "Invalid action, please choose another one."
    end
  end

  def route_delivery_guy_to(user_input)
    case user_input
    when "1"
      # TO-DO: List undelivered orders
    when "2"
      # TO-DO: Mark an order as delivered
    when "8"
      self.run
    when "9"
      @running = false
    else
      puts "Invalid action, please choose another one."
    end
  end

end
