class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.references :message, null: false, foreign_key: true
      t.integer :comment_id
      t.string :ip
      t.timestamps
    end
  end
end
