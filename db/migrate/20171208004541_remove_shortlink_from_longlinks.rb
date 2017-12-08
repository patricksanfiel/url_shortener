class RemoveShortlinkFromLonglinks < ActiveRecord::Migration[5.1]
  def up
    remove_column :longlinks, :shortlink
  end

  def down
    add_column :longlinks, :shortlink
  end
end
