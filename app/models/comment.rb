class Comment < ApplicationRecord
  has_many :messages
  validates :tittle, presence: true
  def self.search(search)
    if search != ""
      Comment.where('text LIKE(?)', "%#{search}%")
    else
      Comment.all
    end
  end
end
