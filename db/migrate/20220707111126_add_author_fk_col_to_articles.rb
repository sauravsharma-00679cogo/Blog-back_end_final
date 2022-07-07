class AddAuthorFkColToArticles < ActiveRecord::Migration[7.0]
  def change
    add_reference :article, :author, foreign_key: true
  end
end
