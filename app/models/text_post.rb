class TextPost < ActiveRecord::Base
  has_one :post, as: :content, dependent: :destroy
  delegate :comments, to: :post

  validates :title, presence: true
  validates :text, presence: true
end
