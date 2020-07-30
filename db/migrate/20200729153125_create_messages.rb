class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :name
      t.integer :age
      t.string :text
      t.timestamps
    end
  end
end
