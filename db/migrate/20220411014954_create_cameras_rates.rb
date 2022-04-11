class CreateCamerasRates < ActiveRecord::Migration[5.2]
  def change
    create_table :cameras_rates, :id => false do |t|
      t.integer :camera_id
      t.integer :rate_id
    end
  end
end
