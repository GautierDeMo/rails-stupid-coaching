class QuestionsController < ApplicationController

  def ask

  end

  def answer
    @question = params['question']
    if @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question == "I am going to work"
      @answer = "Great!"
    else @answer = "I don't care, get dressed and go to work!"
    end
  end

  def home
    
  end

end

# Si le message est I am going to work, le coach répondra Great!.
# Si le message contient un point d’interrogation ? à la fin, le coach répondra Silly question, get dressed and go to work!.
# Sinon, le coach répondra I don't care, get dressed and go to work!.
