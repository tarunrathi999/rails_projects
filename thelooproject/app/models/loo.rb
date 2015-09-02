class Loo < ActiveRecord::Base
  belongs_to :category
  has_many :attachments, as: :attachable
  accepts_nested_attributes_for :attachments

  validates :name, :location_name, presence: true

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  def self.search(terms, loo)
    if terms && loo
      where(
        "name like ? OR description like ? OR
        postal_code like ? OR
        locality like ? OR
        country like ? OR
        administrative_area_level_1 like ? OR
        formatted_address like ?",
        "%#{terms}%",
        "%#{terms}%",
        loo && loo[:postal_code] ? loo[:postal_code] : "",
        loo && loo[:locality] ? loo[:locality]: "",
        loo && loo[:country] ? loo[:country] : 0,
        loo && loo[:administrative_area_level_1] ? loo[:administrative_area_level_1] : "",
        loo && loo[:formatted_address] ? loo[:formatted_address] : "")
      .order("name ASC")
    elsif terms
      where( "name like ? OR description like ? OR formatted_address like ?", "%#{terms}%", "%#{terms}%", "%#{terms}%").order("name ASC")
    end
  end

end
