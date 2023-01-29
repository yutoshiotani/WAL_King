class CreateSteps < ActiveRecord::Migration[6.1]
  def change
    create_table :steps do |t|
      t.integer :user_id, null: false
      t.integer :count, null: false
      t.date :date, null: false

      t.timestamps
    end
  end
end
