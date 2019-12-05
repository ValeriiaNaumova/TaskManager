class Category < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy
  validates  :color, :presence => true
  validates :title,  :presence => true, length: {minimum: 5}
end
