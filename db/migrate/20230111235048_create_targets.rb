class CreateTargets < ActiveRecord::Migration[6.1]
  def change
    create_table :targets do |t|
      t.integer :user_id, null: false
      t.date :limit
      t.text :body
      t.integer :weight
      t.integer :daily_step
      t.integer :status, null: false, default: 0
      t.timestamps
    end
  end
end
