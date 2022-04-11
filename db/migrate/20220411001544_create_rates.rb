class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.text :name
      t.text :comment
      t.integer :user_id

      t.timestamps
    end
  end
end
