class CreateBookCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :book_categories do |t|
      t.string     :name, null: false
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
