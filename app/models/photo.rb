class Photo < ApplicationRecord
  validates :type_id, {presence: true}
  validates :format_id, {presence: true}
end
