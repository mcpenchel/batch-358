require_relative "../views/orders_view"
require_relative "../models/order"

class OrdersController

  def initialize(order_repository, meal_repository, customer_repository, employee_repository)
    @order_repository = order_repository
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @view = OrdersView.new
  end

  def list_undelivered_orders(current_employee)
    orders = @order_repository.undelivered_orders
    unless current_employee.manager?
      orders = orders.select {|order| order.employee.id == current_employee.id }
    end
    @view.list_orders(orders)
  end

  def add_an_order
    @view.list_meals_or_customers(@meal_repository.all)
    meal_id = @view.ask_for("meal")
    meal = @meal_repository.find(meal_id)

    @view.list_meals_or_customers(@customer_repository.all)
    customer_id = @view.ask_for("customer")
    customer = @customer_repository.find(customer_id)

    @view.list_employees(@employee_repository.all)
    employee_id = @view.ask_for("employee")
    employee = @employee_repository.find(employee_id)

    # Initialize a new Order object
    order = Order.new(
      employee: employee,
      meal: meal,
      customer: customer
    )
    # Add it to the order repo
    @order_repository.add(order)
  end

  def mark_an_order_as_delivered(current_employee)
    list_undelivered_orders(current_employee)
    # we're gonna use the order.deliver!
    order_id = @view.ask_for("order")
    @order_repository.mark_an_order_as_delivered(order_id)
  end

end
