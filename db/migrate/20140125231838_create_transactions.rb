class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :cashAcct
      t.integer :deposit
      t.timestamps
    end
  end
end
