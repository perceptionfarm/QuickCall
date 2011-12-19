class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :endprice
      t.string :promotermargin
      t.string :companymargin
      t.string :supplierprice
      t.integer :status

      t.timestamps
    end
  end
end
