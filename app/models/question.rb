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
  validates :title, presence: true, uniqueness: true
end
