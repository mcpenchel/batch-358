class Router

  def initialize(meals_controller, customers_controller, sessions_controller, orders_controller)
    @running = true
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @sessions_controller = sessions_controller
    @orders_controller = orders_controller
  end

  def run
    @current_user = @sessions_controller.sign_in

    while @running
      if @current_user.manager?
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
    puts "5 - List undelivered orders"
    puts "6 - Add an order"
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
    when "5"
      @orders_controller.list_undelivered_orders(@current_user)
    when "6"
      @orders_controller.add_an_order
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
      @orders_controller.list_undelivered_orders(@current_user)
    when "2"
      @orders_controller.mark_an_order_as_delivered(@current_user)
    when "8"
      self.run
    when "9"
      @running = false
    else
      puts "Invalid action, please choose another one."
    end
  end

end
