class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  has_one_attached :image
  scope :filter_by_starts_with, -> (first_name) { where("name like ?", "#{first_name}%")}
end
