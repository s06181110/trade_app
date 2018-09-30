class CreateUserPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_photos do |t|
      t.integer :photo_id
      t.integer :user_id
      t.integer :count

      t.timestamps
    end
  end
end
