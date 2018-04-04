# == Schema Information
#
# Table name: recipes
#
#  id           :integer          not null, primary key
#  name         :text
#  food_desc    :text
#  Image        :text
#  prep_time    :text
#  cook_time    :text
#  no_of_serves :text
#  spice_level  :text
#  recipe_type  :text
#  foodtype_id  :integer
#  ingredients  :text
#  procedure    :text
#  country      :text
#  city         :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Recipe < ApplicationRecord
  has_and_belongs_to_many :foodtypes , :optional => true
  has_many :favorite_recipes
end
