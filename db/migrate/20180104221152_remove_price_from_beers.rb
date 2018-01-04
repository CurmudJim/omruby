class RemovePriceFromBeers < ActiveRecord::Migration[5.0]
  def change
    remove_column :beers, :price, :decimal
  end
end
