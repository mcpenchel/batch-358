require 'csv'
require_relative "../models/order"

class OrderRepository # Not inheriting from BaseRepository, as this is
                      # a different, more specific Repo

  def initialize(csv_file_path, meal_repository, customer_repository, employee_repository)
    @orders = []
    @csv_file_path = csv_file_path
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    load_csv
  end

  def undelivered_orders
    # @orders.reject(&:delivered?)
    @orders.reject { |order| order.delivered? }
  end

  def add(order)
    order.id = @orders.empty? ? 1 : @orders.last.id + 1
    @orders << order
    save_csv
  end

  def mark_an_order_as_delivered(order_id)
    order = undelivered_orders.find {|order| order.id == order_id}
    order.deliver!
    save_csv
  end

  private
  def save_csv
    csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

    CSV.open(@csv_file_path, 'wb', csv_options) do |csv|
      csv << ['id', 'delivered', 'meal_id', 'employee_id', 'customer_id']
      @orders.each do |order|
        csv << [order.id, order.delivered?, order.meal.id, order.employee.id, order.customer.id]
      end
    end
  end

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file_path, csv_options) do |row|

      # p row
      # {
      #    id: "1", delivered: "true",
      #    meal_id: "1",
      #    employee_id: "2",
      #    customer_id: "1"
      # }

      # row[:shrubbles] # => nil
      # row[:shrubbles] = "Weird word"

      row[:id] = row[:id].to_i
      row[:delivered] = row[:delivered] == "true"

      # p row
      # {
      #    id: 1, delivered: true,
      #    meal_id: "1",
      #    employee_id: "2",
      #    customer_id: "1"
      # }

      row[:meal] = @meal_repository.find(row[:meal_id].to_i)
      row[:customer] = @customer_repository.find(row[:customer_id].to_i)
      row[:employee] = @employee_repository.find(row[:employee_id].to_i)

      # p row
      # {
      #    id: 1, delivered: true,
      #    meal_id: "1",
      #    employee_id: "2",
      #    customer_id: "1".
      #    meal: #<Meal:0x000055865098f428 @id=1, @name="Fried Hobbit", @price=85>,
      #    employee: #<Employee:0x000055865017e1d0 @id=2, @password="theonering", @role="delivery_guy", @username="Sauron">,
      #    customer: #<Customer:0x0000558650561248 @address="Isengard", @id=1, @name="Saruman the White">
      # }

      @orders << Order.new(row)
    end
  end
end
