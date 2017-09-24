class Image < ApplicationRecord
  belongs_to :document
  validates :imgUrl, presence: true
end
