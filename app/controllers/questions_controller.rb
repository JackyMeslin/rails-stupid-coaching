class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answer = ['Great !', 'silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    # If the message is I am going to work, the coach will answer Great!
    if params[:message] == 'I am going to work'
    # If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
      @answer = @answer[0]
    # Otherwise the coach will answer I don't care, get dressed and go to work!
    elsif params[:message].end_with?('?')
      @answer = @answer[1]
    else
      @answer = @answer[2]
    end
  end

end
