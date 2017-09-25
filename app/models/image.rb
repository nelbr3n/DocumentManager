class Image < ApplicationRecord
  belongs_to :document
  
   validates :imageUrl,    :presence => { message: "Tiene que haber una direccion completa" }
   validates :document_id, :presence => { message: "No puede dejarse vacío" }
end
