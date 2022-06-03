class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :item
      t.integer :habit_id
    end
  end
end
