class Contact < ApplicationRecord
    validates :first_name,presence: true 
    validates :phone_number,presence: true
    validates_uniqueness_of :phone_number
    validates_uniqueness_of :email
    has_one_attached :image 
    paginates_per 6
end