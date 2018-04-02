class CreateFoodtypesRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :foodtypes_recipes , :id => false do |t|
      t.integer :foodtype_id
      t.integer :recipe_id
    end
  end
end
