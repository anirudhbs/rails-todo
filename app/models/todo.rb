class Todo < ApplicationRecord
  validates :title, presence: true, 
    length: { minimum: 5 } # todo: check if indentation is okay
end
