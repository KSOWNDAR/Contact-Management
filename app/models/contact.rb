class Contact < ApplicationRecord
    validates :first_name,presence: true 
    validates :phone_number,presence: true, length:{is: 10 }
    has_one_attached :image 
end