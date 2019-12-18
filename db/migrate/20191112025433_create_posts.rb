class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string     :title,              null: false
      t.date       :date,               null: false
      t.integer    :prefecture_id,      null: false
      t.string     :place
      t.integer    :genre_id
      t.text       :explanation
      t.timestamps
    end
  end
end
