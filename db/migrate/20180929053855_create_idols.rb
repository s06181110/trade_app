class CreateIdols < ActiveRecord::Migration[5.2]
  def change
    create_table :idols do |t|
      t.string :name
      t.integer :group_id

      t.timestamps
    end
  end
end
