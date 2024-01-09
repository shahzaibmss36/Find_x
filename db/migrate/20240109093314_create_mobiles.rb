class CreateMobiles < ActiveRecord::Migration[7.1]
  def change
    create_table :mobiles do |t|
      t.string :company
      t.string :model
      t.string :color
      t.string :price

      t.timestamps
    end
  end
end
