class ChangePostModel < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :member, :string
    remove_column :posts, :yori, :boolean
    remove_column :posts, :tyu, :boolean
    remove_column :posts, :hiki, :boolean

    add_column :posts, :content, :text
    add_column :posts, :comment, :text
  end
end
