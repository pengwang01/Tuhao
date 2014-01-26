class CreateShippers < ActiveRecord::Migration
  def change
    create_table :shippers do |t|
      t.string :driverLicense
      t.string :carLicense

      t.timestamps
    end
  end
end
