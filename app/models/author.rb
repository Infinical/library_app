#Author
class Author < ApplicationRecord
  validates :firstname, presence: true
end
