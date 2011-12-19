class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :owner
      t.string :date
      t.string :fromtime
      t.string :totime
      t.text :message
      t.integer :status
      t.integer :creator

      t.timestamps
    end
  end
end
