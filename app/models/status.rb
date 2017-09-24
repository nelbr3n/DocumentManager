class Status < ApplicationRecord
  belongs_to :department
  validates :title, presence: true, length:{ maximum: 50 }
  has_many :sentDocuments, :class_name => 'Document', :foreign_key => 'senderStatus_id'
  has_many :receivedDocuments, :class_name => 'Document', :foreign_key => 'receiverStatus_id'
end
