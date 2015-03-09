class RenameTypeToCategoryInPets < ActiveRecord::Migration
  def change
  	rename_column :pets, :type, :category
  end
end
