class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string  :image, null: false
      t.string  :title, null: false
      t.string  :author, null: false
      t.integer :page_number, null: false

      t.timestamps
    end
  end
end
