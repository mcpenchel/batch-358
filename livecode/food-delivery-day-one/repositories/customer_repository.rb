require 'csv'
require_relative '../models/customer'

class CustomerRepository

  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @customers = []
    load_csv if File.exist?(@csv_file_path)
  end

  def all
    @customers
  end

  def add(customer)
    # Set the new customer ID (sequential and growing)
    customer.id = @customers.empty? ? 1 : @customers.last.id + 1
    # Push the new customer to the @customers array
    @customers << customer
    # Save the new customer to the CSV file
    save_csv
  end

  private
  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file_path, csv_options) do |row|
      row[:id] = row[:id].to_i
      @customers << Customer.new(row)
    end
  end

  def save_csv
    csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

    CSV.open(@csv_file_path, 'wb', csv_options) do |csv|
      csv << ['id', 'name', 'address']
      @customers.each do |customer|
        csv << [customer.id, customer.name, customer.address]
      end
    end
  end

end
