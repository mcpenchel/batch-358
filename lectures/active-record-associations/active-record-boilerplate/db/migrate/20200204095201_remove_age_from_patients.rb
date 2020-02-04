class RemoveAgeFromPatients < ActiveRecord::Migration[5.1]
  def change
    remove_column :patients, :age
  end
end
