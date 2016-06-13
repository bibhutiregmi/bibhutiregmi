class Film < ActiveRecord::Base
  has_and_belongs_to_many :casts
  has_many :reviews 
  validates :name, presence: true
  validates :genre, presence: true
  validates :rating, presence: true, inclusion: {in: 1..5}
  validates :duration, presence: true, inclusion: {in: 1..5}

end
