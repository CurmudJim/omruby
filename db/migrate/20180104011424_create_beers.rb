class CreateBeers < ActiveRecord::Migration[5.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.decimal :abv
      t.text :style
      t.decimal :price

      t.timestamps
    end
  end
end
