class Cast < ActiveRecord::Base
  has_and_belongs_to_many :film
  has_one :actual_member
end
