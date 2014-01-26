class CreateDeposits < ActiveRecord::Migration
  def change
    create_table :deposits do |t|
      t.datetime :depositDate
      t.integer :statusType
      t.decimal :amount
      t.timestamps
    end
  end
end
