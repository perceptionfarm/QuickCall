class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :operator_id
      t.integer :promoter_id
      t.integer :customer_id
      t.text :location
      t.text :notes
      t.string :date
      t.string :fromtime
      t.string :totime
      t.integer :status
      t.integer :priority

      t.timestamps
    end
  end
end
