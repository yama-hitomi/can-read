class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string  :image
      t.string  :title
      t.string  :author
      t.integer :page_number

      t.timestamps
    end
  end
end
