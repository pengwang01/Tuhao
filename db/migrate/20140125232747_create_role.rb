class CreateRole < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.references :person, index: true
      t.references :shipper, index: true
      t.references :sender, index: true
    end
  end
end
