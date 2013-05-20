class CreateAvailibilities < ActiveRecord::Migration
  def change
    create_table :availibilities do |t|
      t.datetime :start
      t.datetime :end
      t.references :doctor

      t.timestamps
    end
    add_index :availibilities, :doctor_id
  end
end
