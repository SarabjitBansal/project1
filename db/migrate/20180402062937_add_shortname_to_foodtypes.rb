class AddShortnameToFoodtypes < ActiveRecord::Migration[5.1]
  def change
    add_column :foodtypes, :shortname, :text
  end
end
