class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :description
      t.float :price
      t.integer :opncampaigns
      t.integer :opncustomerspercampaign
      t.integer :opcustomfield
      t.integer :opbackup

      t.timestamps
    end
  end
end
