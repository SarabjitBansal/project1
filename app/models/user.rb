# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#

class User < ApplicationRecord
  has_secure_password
  has_many :recipes
  validates :email, :presence => true, :uniqueness => true
  has_many :favorites, :through => :favorite_recipes
end
