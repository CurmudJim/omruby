class CreateNominatings < ActiveRecord::Migration[5.0]
  def change
    create_table :nominatings do |t|
      t.references :nomination, foreign_key: true
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
