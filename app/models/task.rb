class Task < ApplicationRecord
  validates :title, presence: true # required

end
