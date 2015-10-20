class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :title
      t.string :url
      t.boolean :reserved
      t.boolean :has_been_purchased
      t.text :comment

      t.timestamps null: false
    end
  end
end
