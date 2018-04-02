class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :recipes, :Image, :image
  end
end
