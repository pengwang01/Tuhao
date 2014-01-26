class CreateCashAccts < ActiveRecord::Migration
  def change
    create_table :cash_accts do |t|
      t.decimal :totalBalance
      t.timestamps
    end
  end
end
