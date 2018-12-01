class CreateDailyPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_plans do |t|
      t.integer :start_hour, null: false
      t.integer :start_minute, null: false
      t.references :daily_plan, foreign_key: true

      t.timestamps
    end
  end
end
