class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses, dependent: :destroy
  validates :name, uniqueness: true, presence:true, allow_blank: false
end
