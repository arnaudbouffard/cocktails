class Cocktail < ActiveRecord::Base
  has_many :dosages, dependent: :destroy
  accepts_nested_attributes_for :dosages, reject_if: proc {|attr| attr[:quantity].blank?}
  has_many :ingredients, :through => :dosages
end
