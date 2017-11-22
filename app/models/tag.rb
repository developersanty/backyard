class Tag < ApplicationRecord
  has_many :taggings
  has_many :blocks, through: :taggings
  belongs_to :user

  validates :value, presence: true
  validates_uniqueness_of :value
end
