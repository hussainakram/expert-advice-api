# QuestionTag Attributes
#  {
#    question_id: :integer
#    tag_id: :integer
#  }
class QuestionTag < ApplicationRecord
  belongs_to :question
  belongs_to :tag
end
