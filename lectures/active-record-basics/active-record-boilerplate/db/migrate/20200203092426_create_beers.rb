class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :style
      t.string :degrees_of_alcohol

      t.timestamps # created_at + updated_at
    end
  end
end
