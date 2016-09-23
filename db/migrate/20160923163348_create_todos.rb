class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.string :name
      t.text :desc
      t.boolean :completed

      t.timestamps
    end
  end
end
