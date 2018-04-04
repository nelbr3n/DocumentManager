class Tag < ApplicationRecord
<<<<<<< HEAD
  belongs_to :documents
=======
##  belongs_to_many :documents
>>>>>>> b18d2784d96aa9818ae0df7d50abfda6bb272bd3
  belongs_to :department
  validates :tagName, presence: true, allow_blank: false
  validates :department_id, presence: true
  validates_uniqueness_of :tagName, scope: :department_id
  # Pendiente: has_and_belongs_to_many :department
end
