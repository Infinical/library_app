# Author
class Author < ApplicationRecord
  has_many :books :dependent: :destroy
  validates :firstname, presence: true
end
