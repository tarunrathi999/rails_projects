class CityMaker < ActiveRecord::Base
  belongs_to :category
  has_many :reviews
  
  validates :location_name, :name, :address1, :address2, :phone, :lat, :lng, :city, :state, :country, presence: true
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def self.search(terms)
    where("name like ? OR description like ? or city like ? or state like ? or country like ? or address1 like ? or address2 like ?", "%#{terms}%", "%#{terms}%", "%#{terms}%", "%#{terms}%", "%#{terms}%", "%#{terms}%", "%#{terms}%").order("name ASC")
  end
end
