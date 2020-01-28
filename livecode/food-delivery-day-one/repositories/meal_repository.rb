require 'csv'
require_relative '../models/meal'

class MealRepository

  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @meals = []
    load_csv if File.exist?(@csv_file_path)
  end

  def all
    @meals
  end

  def add(meal)
    # Set the new meal ID (sequential and growing)
    meal.id = @meals.empty? ? 1 : @meals.last.id + 1
    # Push the new meal to the @meals array
    @meals << meal
    # Save the new meal to the CSV file
    save_csv
  end

  private
  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file_path, csv_options) do |row|
      # {id: "1", name: "lasagna", price: "50"}
      row[:id] = row[:id].to_i
      row[:price] = row[:price].to_i
      @meals << Meal.new(row)
    end
  end

  def save_csv
    csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

    CSV.open(@csv_file_path, 'wb', csv_options) do |csv|
      csv << ['id', 'name', 'price']
      @meals.each do |meal|
        csv << [meal.id, meal.name, meal.price]
      end
    end
  end

end
