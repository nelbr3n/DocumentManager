json.extract! document, :id, :documentCode, :sender_id, :receiver_id, :creator_id, :puesto ,:subject, :date, :content, :tags, :conversationId, :isSenderPrivate, :senderStatus_id, :isReceiverPrivate, :receiverStatus_id, :picture, :archives, :created_at, :updated_at
json.url document_url(document, format: :json)
