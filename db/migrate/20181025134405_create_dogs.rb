class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :race
      t.string :gender
      t.references :city, foreign_key: true
      t.timestamps
    end
  end
end
