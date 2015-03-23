class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.datetime :startdate
      t.datetime :enddate
      t.string :content
      t.string :headline
      t.string :media
      t.string :mediacaption
      t.string :mediacredit
      t.timestamps
    end
  end
end
