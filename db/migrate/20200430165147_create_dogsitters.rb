class CreateDogsitters < ActiveRecord::Migration[6.0]
  def change
    create_table :dogsitters do |t|
      t.string :nickname
      t.references :dog, foreign_key: true
      t.references :city, foreign_key: true
      t.references :stroll, foreign_key: true
      t.timestamps
    end
  end
end
