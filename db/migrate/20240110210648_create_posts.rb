class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.integer :author_id, null: false, index: true
      t.string :title
      t.text :text
      t.integer :comments_counter, default: 0
      t.integer :likes_counter, default: 0

      t.timestamps
    end

    add_foreign_key :posts, :users, column: author_id
  end
end
