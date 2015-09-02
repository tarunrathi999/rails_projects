class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :city_maker
  validates :title, :body, presence: true
end
