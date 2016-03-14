class Specialization < ActiveRecord::Base
  belongs_to :profile, inverse_of: :specializations
  belongs_to :specialty, inverse_of: :specializations
end
