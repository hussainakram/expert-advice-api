=begin
Question Attributes
  {
    title:      :string
    body:       :text
    slug:       :string
    created_at  :datetime
    updated_at  :datetime
  }
=end
class Question < ApplicationRecord
  belongs_to :user
  has_many :answers
  validates :title, presence: true, uniqueness: true
end
