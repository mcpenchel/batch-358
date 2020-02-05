class CreateReadings < ActiveRecord::Migration[5.1]
  def change
    create_table :readings do |t|
      t.datetime :reading_date
      t.references :book, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
