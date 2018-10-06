class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.integer :type_id
      t.integer :format_id

      t.timestamps
    end
  end
end
