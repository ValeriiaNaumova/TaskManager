class Task < ApplicationRecord
  belongs_to :user
  validates :category, presence: false, allow_blank: true
  belongs_to :category, optional: true
  has_many :tag_associations, dependent: :destroy
  has_many :tags, through: :tag_associations, dependent: :destroy
  validates :title, :presence => true, length: {minimum: 5}, uniqueness: true
  validates :note, :presence => true, length: {minimum: 5}

  self.per_page = 30

  def self.tagged_with(title)
    Tag.find_by!(title: title).tasks
  end

  def self.tag_counts
    Tag.select('tags.*, count(tag_association.tag_id) as count').joins(:tag_association).group('tag_association.tag_id')
  end

  def tag_list
    tags.map(&:title).join(', ')
  end

  def tag_list=(titels)
    self.tags = titels.split(',').map do |n|
      Tag.where(title: n.strip).first_or_create!
    end
  end

end
