class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :department
  validates :department_id, :presence => { message: "Tiene que escribir al menos 5 caracteres" }
  validates :username, :presence => { message: "Tiene que ingresar un usuario" }
  validates :email, :presence => { message: "Debe haber un @" }
  has_many :sentDocuments, :class_name => 'Document', :foreign_key => 'sender_id'
  has_many :receivedDocuments, :class_name => 'Document', :foreign_key => 'receiver_id'
  has_many :createdDocuments, :class_name => 'Document', :foreign_key => 'creator_id'
end
