class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :chef
      t.string :ingredients
      t.text :directions
      t.integer :prep_time
      t.string :image

      t.timestamps null: false
    end
  end
end
