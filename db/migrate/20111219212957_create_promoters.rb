class CreatePromoters < ActiveRecord::Migration
  def change
    create_table :promoters do |t|
      t.string :name
      t.string :second
      t.string :email
      t.string :phone
      t.string :mobile
      t.string :status
      t.string :rating
      t.boolean :car
      t.boolean :motorbike
      t.string  :username
      t.string  :password
      t.timestamps
    end
  end
end
