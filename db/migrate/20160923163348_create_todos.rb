class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.string :name, null: false
      t.boolean :completed, default: false
      t.timestamps
    end
  end
end
