class Task < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :tag_associations, dependent: :destroy
  has_many :tags, through: :tag_associations, dependent: :destroy
  validates :title, :presence => true, length: {minimum: 5}
  validates :note, :presence => true, length: {minimum: 5}

end
