class AddFlatIdToTodos < ActiveRecord::Migration[5.1]
  def change
    add_reference :todos, :flat, foreign_key: true
  end
end
