class CreateReadPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :read_plans do |t|
      t.date :end_expected_on
      t.boolean :finished
      t.integer :read_page_of_day
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
