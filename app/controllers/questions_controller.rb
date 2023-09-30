class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input = params[:question]

    if @input.downcase == "i am going to work right now!"
      @response = ""
    elsif @input.include? "?"
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
