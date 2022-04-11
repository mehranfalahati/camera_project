class CreateCameraUser < ActiveRecord::Migration[5.2]
  def change
    create_table :camera_users, :id => false do |t|
      t.integer :camera_id
      t.integer :user_id
    end
  end
end
