class Review < ApplicationRecord
  belongs_to :trip
  validates :content, presence: true
end
