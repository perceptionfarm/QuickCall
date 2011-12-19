class CreateOperators < ActiveRecord::Migration
  def change
    create_table :operators do |t|
      t.string :name
      t.string :second
      t.string :email
      t.string :username
      t.string :password
      t.integer :level
      t.integer :company
      t.integer :status

      t.timestamps
    end
  end
end
