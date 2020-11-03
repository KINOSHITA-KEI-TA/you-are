class Comment < ApplicationRecord
  has_many :messages

  def self.search(search)
    if search != ""
      Comment.where('text LIKE(?)', "%#{search}%")
    else
      Comment.all
    end
  end
end
