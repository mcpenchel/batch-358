require 'csv'
require_relative '../models/employee'
require_relative 'base_repository'

class EmployeeRepository < BaseRepository

  # For this repo, you could choose if it would inherit from the
  # BaseRepository or not, since there's no add or save methods for
  # this class.

  # If you want it to inherit from the BaseRepo, but don't want
  # the add method to exist, you could also do: undef_method :add

  # This way you would UNDEFINE the add method >:)~~~

  def find_by_username(username)
    @elements.find { |employee| employee.username == username }
  end

  def build_element(row)
    row[:id] = row[:id].to_i

    Employee.new(row)
  end

end
