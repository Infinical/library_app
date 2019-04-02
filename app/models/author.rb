# Author
class Author < ApplicationRecord
  has_many :books
  validates :firstname, presence: true
end
