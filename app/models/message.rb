class Message < ApplicationRecord
  belongs_to :comment
  has_many :likes,dependent: :destroy
end
