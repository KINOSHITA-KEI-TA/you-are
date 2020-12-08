class CreateSecrets < ActiveRecord::Migration[6.0]
  def change
    create_table :secrets do |t|
      t.string :name,null: false
      t.string :school_name,null: false
      t.string :age
      t.string :text
      t.timestamps
    end
  end
end
