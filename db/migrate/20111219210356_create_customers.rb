class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :second
      t.string :email
      t.string :phone1
      t.string :phone2
      t.string :mobile
      t.string :facebook
      t.string :twitter
      t.string :addr1_street
      t.string :addr1_city
      t.string :addr1_zip
      t.string :addr1_province
      t.string :addr1_state
      t.string :addr1_country
      t.string :addr1_def
      t.boolean :addr1_pref
      t.string :addr2_street
      t.string :addr2_city
      t.string :addr2_zip
      t.string :addr2_province
      t.string :addr2_state
      t.string :addr2_country
      t.string :addr2_def
      t.boolean :addr2_pref
      t.string :birth_date
      t.string :birth_place
      t.string :cf
      t.string :occupation
      t.integer :education
      t.string :prefered_call_time
      t.string :prefered_visit_time
      t.string :freefield1
      t.string :freefield1_label
      t.string :freefield2
      t.string :freefield2_label
      t.string :freefield3
      t.string :freefield3_label

      t.timestamps
    end
  end
end
