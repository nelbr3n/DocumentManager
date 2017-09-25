class Position < ApplicationRecord
    has_many :users
    validates_associated :users
    validates :title, presence: true, length: {minimum:5, maximum: 50}, :uniqueness => true

    def self.search(search)
        where("title LIKE ?", "%#{search}%")
    end

end
