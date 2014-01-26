class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.datetime :shipperApproveDate
      t.datetime :senderApproveDate
      t.string  :receiver
      t.string  :address1
      t.string  :address2
      t.string  :city
      t.string  :zipCode
      t.string  :sender
      t.string  :shipper
      t.string  :deposit
      t.integer  :statusType
      t.timestamps
    end
  end
end
