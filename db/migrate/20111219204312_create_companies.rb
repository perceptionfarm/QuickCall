class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.integer :status
      t.string	:username
      t.string	:password
      t.string 	:email
      t.integer :profile
      t.string	:expiration

      t.timestamps
    end
  end
end
