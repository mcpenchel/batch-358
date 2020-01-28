require_relative "../views/customers_view"

class CustomersController

  def initialize(customer_repository)
    @customer_repository = customer_repository
    @view = CustomersView.new
  end

  def list_customers
    @view.list(@customer_repository.all)
  end

  def add_a_customer
    customer_name = @view.ask_name
    customer_address = @view.ask_address

    customer = Customer.new(name: customer_name, address: customer_address)
    @customer_repository.add(customer)
  end


end
