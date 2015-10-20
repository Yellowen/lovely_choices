class CreateSubscribes < ActiveRecord::Migration
  def change
    create_table :subscribes do |t|
      t.string :email
      t.string :string

      t.timestamps null: false
    end
  end
end
