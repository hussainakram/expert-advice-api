# serialize questions
class QuestionSerializer < ActiveModel::Serializer
  attributes :title, :body, :user, :created_at, :updated_at
end
