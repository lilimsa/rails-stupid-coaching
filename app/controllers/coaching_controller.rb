class CoachingController < ApplicationController
  def answer
    @category = params[:question]
  end

  def ask
    @question = params[:query]
    if @question.empty?
    @answer = "what is your question ?"
    elsif @question.end_with?("?")
    @answer = "question?"
    else
    @answer = "stupid man !!"
    end
  end
end

