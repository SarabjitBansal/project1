# == Schema Information
#
# Table name: foodtypes
#
#  id         :integer          not null, primary key
#  title      :text
#  recipe_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Foodtype < ApplicationRecord
  has_and_belongs_to_many :recipes
end
