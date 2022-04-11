class CreateCameras < ActiveRecord::Migration[5.2]
  def change
    create_table :cameras do |t|
      t.text :name
      t.text :brand
      t.text :details
      t.text :price
      t.text :image
      t.integer :user_id

      t.timestamps
    end
  end
end
