class Question < ApplicationRecord
  validates :subject, presence: true, length: { maximum: 255 }
  validates :context, presence: true
  validates :point, presence: true
end
