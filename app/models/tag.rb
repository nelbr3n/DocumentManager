class Tag < ApplicationRecord
    has_and_belongs_to_many :documents
    
    validates :tagName, :presence => { message: "No puede dejarse vacío" }
end
