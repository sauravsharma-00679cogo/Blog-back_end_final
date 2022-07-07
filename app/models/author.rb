class Author < ApplicationRecord
    has_many(
    :articles,
    class_name: 'Article',
    foreign_key: 'author_id',
    inverse_of: :author,
    dependent: :destroy
  )

  validates :title, presence: true
end