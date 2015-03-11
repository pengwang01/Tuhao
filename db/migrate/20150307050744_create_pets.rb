class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.date :birthday
      t.integer :gender
      t.integer :type
      t.string :breed
      t.timestamps
    end
  end
end
