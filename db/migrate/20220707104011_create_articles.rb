class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :content
      t.string:author_name
      t.string :title
      t.string :description
      t.string :url
      t.integer :views
      t.timestamps
    end
  end
end
