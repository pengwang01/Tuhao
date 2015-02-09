class DropPeopleTable < ActiveRecord::Migration
  def change
  	drop_table :People
  end
end
