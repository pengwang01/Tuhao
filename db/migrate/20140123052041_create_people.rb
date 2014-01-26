class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :type
      t.string  :username
      t.string  :password
      t.string  :firstName
      t.string  :lastName
      t.string  :email
      t.string  :address1
      t.string  :address2
      t.string  :city
      t.string  :zipCode
      t.string  :phoneNumber
      t.timestamps
    end
  end
end
