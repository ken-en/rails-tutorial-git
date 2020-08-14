class BusinessStatue < ApplicationRecord
  validates :customer, presence: true, length: { maximum: 255 }
  validates :business, presence: true, length: { maximum: 255 }
  validates :date, presence: true, length: { maximum: 255 }
  validates :situation, presence: true, length: { maximum: 255 }
  belongs_to :company
end
