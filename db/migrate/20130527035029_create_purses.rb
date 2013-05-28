class CreatePurses < ActiveRecord::Migration
  def change
    create_table :purses do |t|
      t.string :time
      t.string :day

      t.timestamps
    end
  end
end
