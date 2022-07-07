class AddFieldnameToTablename < ActiveRecord::Migration[7.0]
  def change
    add_column :tablenames, :fieldname, :string
  end
end
