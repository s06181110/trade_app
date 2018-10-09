class Photo < ApplicationRecord
  validates :type_id, {presence: true}
  validates :idol_id, {presence: true}
  validates :pose_id, {presence: true}
end
