class UserPhoto < ApplicationRecord
    validates :photo_id, {presence: true}
    validates :user_id, {presence: true}
end
