class Category < ActiveRecord::Base
  has_many :city_makers
  validates :name, presence: true
end
