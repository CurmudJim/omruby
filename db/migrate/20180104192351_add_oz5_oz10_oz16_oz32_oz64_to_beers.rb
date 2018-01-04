class AddOz5Oz10Oz16Oz32Oz64ToBeers < ActiveRecord::Migration[5.0]
  def change
    add_column :beers, :oz5, :decimal
    add_column :beers, :oz10, :decimal
    add_column :beers, :oz16, :decimal
    add_column :beers, :oz32, :decimal
    add_column :beers, :oz64, :decimal
  end
end
