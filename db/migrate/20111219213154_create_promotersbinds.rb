class CreatePromotersbinds < ActiveRecord::Migration
  def change
    create_table :promotersbinds do |t|
      t.integer :promoterid
      t.integer :campaignid
      t.integer :status
      t.string :customrate
      t.string :customavailability
      t.text :notes

      t.timestamps
    end
  end
end
