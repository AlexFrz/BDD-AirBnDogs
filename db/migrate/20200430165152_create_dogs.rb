class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.references :dogsitter, foreign_key: true
      t.references :city, foreign_key: true
      t.references :stroll, foreign_key: true
      t.timestamps
    end
  end
end
