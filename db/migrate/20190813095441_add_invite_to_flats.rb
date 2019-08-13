class AddInviteToFlats < ActiveRecord::Migration[5.1]
  def change
    add_column :flats, :invite, :string
    add_index :flats, :invite, unique: true
  end
end
