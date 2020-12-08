class Secret < ApplicationRecord
  validates :name, presence: true
  validates :school_name, presence: true
end
