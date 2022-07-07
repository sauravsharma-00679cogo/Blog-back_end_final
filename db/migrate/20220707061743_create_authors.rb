class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :author_name
      t.string :author_email
      t.integer :author_contact
      t.timestamps
    end
  end
end
