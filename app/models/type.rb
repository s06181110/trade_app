class Type < ApplicationRecord
    validates :name, {presence: true}
    validates :photo_id, {presence: true}
end
