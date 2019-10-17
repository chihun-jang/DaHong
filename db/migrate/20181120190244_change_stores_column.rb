class ChangeStoresColumn < ActiveRecord::Migration
  def change
     rename_column :stores, :store_categorey, :store_category
  end
  
end
