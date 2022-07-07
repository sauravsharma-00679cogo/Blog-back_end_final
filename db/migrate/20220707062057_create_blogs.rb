class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|

      t.string :title
      t.string :description
      t.string :url
      t.integer :views
     
      t.timestamps
    end
  end
end
