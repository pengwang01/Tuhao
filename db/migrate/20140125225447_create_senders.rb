class CreateSenders < ActiveRecord::Migration
  def change
    create_table :senders do |t|
      t.string :cashAcct

      t.timestamps
    end
  end
end
