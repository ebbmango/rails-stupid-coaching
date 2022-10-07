# frozen_string_literal: true

# Controller for all actions related to asking questions
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params['question']
    @question = 'Hello, world!' if @question.empty?

    @stupid_answer = if @question.last == '?'
                       'Silly question, get dressed and go to work!'
                     elsif @question == 'I am going to work'
                       'Great!'
                     else
                       'I don\'t care, get dressed and go to work!'
                     end
  end
end
