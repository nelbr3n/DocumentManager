class Tag < ApplicationRecord
    has_and_belongs_to_many :documents
    validates :tagName, presence: true, length: { maximum: 100 }
    validates :department_id, presence: true
end
