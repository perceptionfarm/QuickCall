class CreateContactactions < ActiveRecord::Migration
  def change
    create_table :contactactions do |t|
      t.integer :customerid
      t.integer :operator
      t.text :note
      t.string :timestamp
      t.string :lastupdate
      t.string :outcome

      t.timestamps
    end
  end
end
