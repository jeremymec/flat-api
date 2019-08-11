class CreateUsersFlats < ActiveRecord::Migration[5.1]
  def change
    create_table :users_flats do |t|
      t.belongs_to :user, index: true
      t.belongs_to :flat, index: true

      t.timestamps
    end
  end
end
