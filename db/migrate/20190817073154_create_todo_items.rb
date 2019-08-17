class CreateTodoItems < ActiveRecord::Migration[5.1]
  def change
    create_table :todo_items do |t|
      t.string :content
      t.date :due_date

      t.references :todo, foreign_key: true

      t.timestamps
    end
  end
end
