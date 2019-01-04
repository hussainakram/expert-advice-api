module Api
  module V1
    # For handling all requests regading question
    class QuestionsController < ApplicationController
      before_action :set_question, only: %i[show update destroy]

      def index
        @questions = Question.all

        render json: @questions
      end

      def show
        render json: @question
      end

      def create
        @question = Question.new(question_params)

        if @question.save
          render json: @question, status: :created, location: api_v1_question_url(@question)
        else
          render json: @question.errors, status: :unprocessable_entity
        end
      end

      def update
        if @question.update(question_params)
          render json: @question
        else
          render json: @question.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @question.destroy
        render nothing: true, status: :no_content
      end

      private

      def set_question
        @question = Question.find(params[:id])
      end

      def question_params
        params.require(:question).permit(:title, :slug, :body)
      end
    end
  end
end
