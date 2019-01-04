# Question Attributes
#  {
#    title:      :string
#    body:       :text
#    slug:       :string
#    created_at  :datetime
#    updated_at  :datetime
#  }
class Question < ApplicationRecord
  belongs_to :user
  has_many :answers
  has_many :question_tags
  has_many :tags, through: :question_tags

  validates :title, presence: true, uniqueness: true
end
