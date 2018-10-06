class PhotoFormat < ApplicationRecord
  validates :idol_id, {presence: true}
  validates :pose_id, {presence: true}
end
