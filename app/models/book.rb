class Book < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :read_book
    validates :image
  end
  belongs_to :user
end
