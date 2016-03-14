class Profile < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

  geocoded_by :full_street_address
  after_validation :geocode

  belongs_to :user
  has_many :specializations, inverse_of: :profile
  has_many :specialties, through: :specializations

  mount_uploader :profile_photo, ProfilePhotoUploader

  #accepts_nested_attributes_for :specializations

  #validates :email, email: true

  def location
    [city.titlecase, state].compact.join(", ") rescue ''
  end

  def full_street_address
    [addresses, city, state, postal].compact.join(", ")
  end

  def addresses
    address = address_one
    address += address_two unless address_two.blank?
    address
  end
end
