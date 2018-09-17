class AddColumnToUserAndPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :user_id, :integer
    add_column :users, :twitter_id, :string
  end
end
