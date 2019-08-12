class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, id: false do |t|
      t.string :uid, null: false
      t.string :name

      t.timestamps
    end

    add_index :users, :uid, unique: true
  end
end
