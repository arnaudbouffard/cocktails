class Ingredient < ActiveRecord::Base
  has_many :dosages, dependent: :destroy
  has_many :cocktails, :through => :dosages
end
