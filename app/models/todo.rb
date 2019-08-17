class Todo < ApplicationRecord
  belongs_to :flat
  has_many :todo_items

end
