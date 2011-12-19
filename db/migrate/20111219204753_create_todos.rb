class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.integer :owner
      t.text :message
      t.integer :status

      t.timestamps
    end
  end
end
