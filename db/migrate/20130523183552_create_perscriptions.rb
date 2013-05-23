class CreatePerscriptions < ActiveRecord::Migration
  def change
    create_table :perscriptions do |t|
      t.text :medicine

      t.timestamps
    end
  end
end
