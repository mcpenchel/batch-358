require 'csv'

class BaseRepository

  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @elements = []
    load_csv if File.exist?(@csv_file_path)
  end

  def all
    @elements
  end

  def find(id)
    @elements.find { |element| element.id == id }
  end

  def add(element)
    element.id = @elements.empty? ? 1 : @elements.last.id + 1
    @elements << element
    save_csv
  end

  private
  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file_path, csv_options) do |row|
      @elements << build_element(row)
    end
  end

  def save_csv
    csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

    CSV.open(@csv_file_path, 'wb', csv_options) do |csv|
      csv << @elements.last.class.headers
      @elements.each do |element|
        csv << element.to_csv
      end
    end
  end

end
