class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
