class CreateStores < ActiveRecord::Migration
  def change
   
    create_table :stores do |t|
      t.string :store_name
      t.string :store_categorey
      t.string :address
      t.string :detail_address
      t.string :contact
     
      t.string :short_content
      t.text :detail_content
      
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end