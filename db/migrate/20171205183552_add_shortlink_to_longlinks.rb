class AddShortlinkToLonglinks < ActiveRecord::Migration[5.1]
  def change
    add_column :longlinks, :shortlink, :string
  end
end
