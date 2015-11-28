class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :title
      t.string :url
      t.text :comment
      t.boolean :reserved
      t.boolean :has_been_purchased
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
