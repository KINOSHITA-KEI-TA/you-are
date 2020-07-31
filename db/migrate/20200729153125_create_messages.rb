class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :comment_id
      t.string :name
      t.string :age
      t.string :text
      t.timestamps
    end
  end
end
