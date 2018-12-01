class CreateDailyAchivements < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_achivements do |t|
      t.integer :page_number, null: false
      t.text :impression
      t.references :read_plan, foreign_key: true

      t.timestamps
    end
  end
end
