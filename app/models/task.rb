class Task < ApplicationRecord
  validates :title, presence: true # required
  belongs_to :user #, class_name: "user", foreign_key: "user_id"

end
