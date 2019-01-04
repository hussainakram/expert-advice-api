=begin
Answer Attributes
  {
    body: :text
  }
=end
class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
end
