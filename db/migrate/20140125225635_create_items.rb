class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :itemName
      t.decimal :length
      t.decimal :width
      t.decimal :weight
      t.decimal :height
      t.string  :description
      t.string  :specialInstruction
      t.decimal :value
      t.timestamps
    end
  end
end
