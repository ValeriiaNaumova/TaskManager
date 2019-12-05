class Tag < ApplicationRecord
  belongs_to :user
  has_many :tag_associations, dependent: :destroy
  has_many :tasks, through: :tag_associations, dependent: :destroy
  validates  :color, :presence => true
  validates :title, :presence => true, length: {minimum: 5}
end
