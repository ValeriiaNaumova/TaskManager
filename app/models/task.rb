class Task < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :tag_associations, dependent: :destroy
  has_many :tags, through: :tag_associations, dependent: :destroy
  validates :title, :presence => true, length: {minimum: 5}
  validates :note, :presence => true, length: {minimum: 5}

  #def self.tagged_with(title)
  #  Tag.find_by!(title: title).tasks
  #end
  #
  #def self.tag_counts
  #  Tag.select('tags.*, count(tag_associations.tag_id) as count').joins(:tag_associations).group('tag_associations.tag_id')
  #end
  #
  #def tag_list
  #  tags.map(&:title).join(', ')
  #end
  #
  #def tag_list=(titles)
  #  self.tags = titles.split(',').map do |n|
  #    Tag.where(title: n.strip).first_or_create!
  #  end
  #end
  #
  #def self.search(search)
  #  if search
  #    find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
  #  else
  #    find(:all)
  #  end
  #end
end
