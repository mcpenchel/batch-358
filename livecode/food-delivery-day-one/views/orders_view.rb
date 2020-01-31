class OrdersView

  def list_orders(orders)
    orders.each do |order|
      puts "#{order.id}. #{order.meal.name},
        to #{order.customer.name}, on the
        address #{order.customer.address}, to be
        delivered by #{order.employee.username}"
    end
  end

  def list_meals_or_customers(elements)
    elements.each do |element|
      puts "#{element.id} #{element.name}"
    end
  end

  def list_employees(employees)
    employees.each do |employee|
      puts "#{employee.id} #{employee.username}"
    end
  end

  def ask_for(field)
    puts "What is the #{field}?"
    gets.chomp.to_i
  end

end
