class Todo < ApplicationRecord
  CATEGORIES = ["work", "study", "home chores", "personal"].freeze

  validates :category, inclusion: { in: CATEGORIES }, allow_blank: true

  scope :with_category, ->(cat) { where(category: cat) if cat.present? }
end
