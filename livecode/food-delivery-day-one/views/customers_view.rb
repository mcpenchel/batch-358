class CustomersView

  def list(customers)
    customers.each do |customer|
      puts "#{customer.id}. #{customer.name}"
    end
  end

  def ask_name
    puts "What is the name of the customer?"
    gets.chomp
  end

  def ask_address
    puts "What is the address of the customer?"
    gets.chomp
  end

end
