class CreateLonglinks < ActiveRecord::Migration[5.1]
  def change
    create_table :longlinks do |t|
      t.string :url

      t.timestamps
    end
  end
end
