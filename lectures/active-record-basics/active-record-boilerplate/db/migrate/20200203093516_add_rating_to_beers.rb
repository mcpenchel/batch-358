class AddRatingToBeers < ActiveRecord::Migration[5.1]
  def change
    add_column :beers, :rating, :integer, null: false, default: 0
  end
end
