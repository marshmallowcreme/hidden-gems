class Specialty < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many :specializations, inverse_of: :specialty
  has_many :profiles, through: :specializations
end
