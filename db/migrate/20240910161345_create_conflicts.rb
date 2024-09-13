class CreateConflicts < ActiveRecord::Migration[7.2]
  def change
    create_table :conflicts do |t|
      t.string :name
      t.text :description
      t.references :kingdom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
