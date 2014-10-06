class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :SendFrom
      t.string :SendTo
      t.string :Description

      t.timestamps
    end
  end
end
