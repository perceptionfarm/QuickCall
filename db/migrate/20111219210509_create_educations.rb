class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :label
      t.text :description
      t.string :scope

      t.timestamps
    end
  end
end
