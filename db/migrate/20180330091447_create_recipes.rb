class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.text :name
      t.text :food_desc
      t.text :Image
      t.text :prep_time
      t.text :cook_time
      t.text :no_of_serves
      t.text :spice_level
      t.text :recipe_type
      t.integer :foodtype_id
      t.text :ingredients
      t.text :procedure
      t.text :country
      t.text :city

      t.timestamps
    end
  end
end
