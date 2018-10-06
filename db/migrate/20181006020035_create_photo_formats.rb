class CreatePhotoFormats < ActiveRecord::Migration[5.2]
  def change
    create_table :photo_formats do |t|
      t.integer :idol_id
      t.integer :pose_id

      t.timestamps
    end
  end
end
