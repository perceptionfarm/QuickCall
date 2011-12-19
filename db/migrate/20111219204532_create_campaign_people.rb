class CreateCampaignPeople < ActiveRecord::Migration
  def change
    create_table :campaign_people do |t|
      t.integer :user
      t.integer :campaign
      t.integer :level

      t.timestamps
    end
  end
end
