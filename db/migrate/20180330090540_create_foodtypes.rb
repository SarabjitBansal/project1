class CreateFoodtypes < ActiveRecord::Migration[5.1]
  def change
    create_table :foodtypes do |t|
      t.text :title
      t.integer :recipe_id

      t.timestamps
    end
  end
end
