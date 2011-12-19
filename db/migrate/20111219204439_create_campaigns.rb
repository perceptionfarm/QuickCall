class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.text :description
      t.integer :status
      t.integer :company

      t.timestamps
    end
  end
end
