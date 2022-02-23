class CreatePractices < ActiveRecord::Migration[7.0]
  def change
    create_table :practices do |t|
      t.string :slug
      t.string :name

      t.timestamps
    end
  end
end
