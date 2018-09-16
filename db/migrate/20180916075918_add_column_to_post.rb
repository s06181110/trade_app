class AddColumnToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :yori, :boolean, default: false, null: false
    add_column :posts, :tyu, :boolean, default: false, null: false
    add_column :posts, :hiki, :boolean, default: false, null: false
  end
end
