class AddNametoPets < ActiveRecord::Migration[5.1]
  def change
    add_column :pets, :name, :string
    add_column :pets, :bio, :string
  end
end
