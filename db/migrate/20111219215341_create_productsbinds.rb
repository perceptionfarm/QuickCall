class CreateProductsbinds < ActiveRecord::Migration
  def change
    create_table :productsbinds do |t|
      t.integer :productid
      t.integer :campaignid
      t.integer :status

      t.timestamps
    end
  end
end
