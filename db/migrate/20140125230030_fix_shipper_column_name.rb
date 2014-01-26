class FixShipperColumnName < ActiveRecord::Migration
  def change
    change_table :shippers do |t|
      t.rename :DriverLicense, :driverLicense
      t.rename :CarLicense, :carLicense
      t.string :cashAcct
    end
  end
end
