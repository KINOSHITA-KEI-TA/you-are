class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :age
      t.string :tittle
      t.string :text
      t.timestamps
    end
  end
end
