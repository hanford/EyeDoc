class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.boolean :lasik
      t.boolean :glasses
      t.boolean :contacts
      t.boolean :steps
      t.boolean :work

      t.timestamps
    end
  end
end
