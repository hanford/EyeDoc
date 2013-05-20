class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.datetime :start
      t.datetime :end
      t.references :doctor

      t.timestamps
    end
    add_index :availabilities, :doctor_id
  end
end
