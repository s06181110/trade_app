class User < ApplicationRecord

  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  validates :password, {presence: true}
  validates :twitter_id, {uniqueness: true}

  def posts
    return Post.where(user_id: self.id)
  end
  
end
