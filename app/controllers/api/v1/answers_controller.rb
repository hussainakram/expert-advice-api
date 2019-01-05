module Api
  module V1
    # For handling all requests regarding answer
    class AnswersController < ApiController
      before_action :doorkeeper_authorize!
      before_action :set_answer, only: %i[show update destroy]
      before_action :set_question, only: %i[index create]

      def index
        @answers = @question.answers

        render json: @question.answers
      end

      def show
        render json: @answer
      end

      def create
        @answer = @question.answers.new(answer_params.merge(user_id: current_user.id))

        if @answer.save
          render json: @answer, status: :created
        else
          render json: @answer.errors, status: :unprocessable_entity
        end
      end

      def update
        if @answer.update(answer_params)
          render json: @answer
        else
          render json: @answer.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @answer.destroy
        render nothing: true, status: :no_content
      end

      private

      def set_question
        @question = Question.find(params[:question_id])
      end

      def set_answer
        @answer = Answer.find(params[:id])
      end

      def answer_params
        params.require(:data).require(:attributes).permit(:body)
      end
    end
  end
end
