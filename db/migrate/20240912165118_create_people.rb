class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name
      t.text :description
      t.references :kingdom, foreign_key: true
      t.timestamps
    end
  end
end
