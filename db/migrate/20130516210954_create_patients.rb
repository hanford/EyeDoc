class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :title
      t.string :name
      t.string :eyecolor

      t.timestamps
    end
  end
end
