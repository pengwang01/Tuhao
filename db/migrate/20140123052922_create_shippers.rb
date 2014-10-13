class CreateShippers < ActiveRecord::Migration
  def change
    create_table :shippers do |t|
      t.string :DriverLicense
      t.string :CarLicense

      t.timestamps
    end
  end
end
