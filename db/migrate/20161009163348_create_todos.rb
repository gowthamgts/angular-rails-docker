class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.string :name, null: false
      t.boolean :completed, default: false
      t.references :user, index: true

      t.timestamps
    end
    add_foreign_key :todos, :users
  end
end
