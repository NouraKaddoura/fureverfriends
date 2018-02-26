class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :species
      t.string :breed
      t.string :gender
      t.integer :age
      t.string :location
      t.string :image_url
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
