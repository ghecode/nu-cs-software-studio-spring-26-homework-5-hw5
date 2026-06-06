class RemoveTitleFromTodos < ActiveRecord::Migration[8.1]
  def change
    remove_column :todos, :title, :string
  end
end
