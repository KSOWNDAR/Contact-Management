class Contact < ApplicationRecord
    validates :first_name,presence: true 
    validates :phone_number,presence: true,length: {is:10}
    validates_uniqueness_of :phone_number
    validates_uniqueness_of :email
    has_one_attached :image 
    paginates_per 6
    scope :filter_by_starts_with, -> (first_name) { where("first_name like ?", "#{first_name}%")}
end