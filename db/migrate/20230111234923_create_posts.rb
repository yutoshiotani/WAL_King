class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id, null: false
      t.integer :post_tag_id
      t.string :title, null: false
      t.integer :count
      t.text :body

      t.timestamps
    end
  end
end
