class CreateMedzzs < ActiveRecord::Migration
  def change
    create_table :medzzs do |t|
      t.text :medicine

      t.timestamps
    end
  end
end
