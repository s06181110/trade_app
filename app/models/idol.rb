class Idol < ApplicationRecord
    validates :name, {presence: true}
    validates :group_id, {presence: true}
end
