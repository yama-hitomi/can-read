class CreateReadPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :read_plans do |t|
      t.date :end_expected_on, null: false
      t.boolean :finished, null: false, default: false
      t.integer :read_page_of_day, null: false
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
