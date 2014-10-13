class FixShipperColumnName < ActiveRecord::Migration
  def change
    change_table :shippers do |t|
      t.string :cashAcct
    end
  end
end
