require 'pry'
require 'csv'
class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
    # Quiz.create(name:[:form_params])
    # CSV.read("quiz.csv").drop(1).map do |question_and_answers|
    #   question = question_and_answers[0]
    #   choices = question_and_answers[1]
    #   answer = question_and_answers[2]
    #   Question.create!(question:question, choices:choices, answer:answer, quiz:Quiz.find_or_create_by!(name:"quiz1"))
      # Question.create!(question:question, choices:choices, answer:answer, quiz:Quiz.find_by(name:[:form_params]))
    end

   def show
     @questions = Question.where(quiz:params[:id])
   end
end
