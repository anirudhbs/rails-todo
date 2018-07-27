class Todo < ApplicationRecord
  has_many: comments
  validates :title, presence: true, 
    length: { minimum: 5 } # todo: check if indentation is okay
end
