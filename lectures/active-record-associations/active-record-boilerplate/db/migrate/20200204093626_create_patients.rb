class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :disease
      t.integer :cured
      t.timestamps
    end
  end
end
