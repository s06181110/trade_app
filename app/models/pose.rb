class Pose < ApplicationRecord
    validates :name, {presence: true}
end
