class CreateDailyPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_plans do |t|
      t.integer :start_hour
      t.integer :start_minute
      t.references :daily_plan, foreign_key: true

      t.timestamps
    end
  end
end
