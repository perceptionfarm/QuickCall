class CreateCustomersbinds < ActiveRecord::Migration
  def change
    create_table :customersbinds do |t|
      t.integer :customerid
      t.integer :companyid
      t.integer :campaignid
      t.integer :status

      t.timestamps
    end
  end
end
