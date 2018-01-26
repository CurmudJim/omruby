class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :nomination_list
      
      t.timestamps
    end
  end
end
