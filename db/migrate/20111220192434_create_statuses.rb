class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :value
      t.string :label
      t.string :scope

      t.timestamps
    end
  end
end
