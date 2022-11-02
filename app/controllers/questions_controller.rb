class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = ""
    answer_tab = {
      rep?: "Silly question, get dressed and go to work!.",
      repOver: "I don't care, get dressed and go to work!",
      repGodd: "Great!"
    }

    # Les réponses
    if (@question.count "?") > 0
      @answer = answer_tab[:rep?]
    elsif @question.match("!")
      @answer = answer_tab[:repGodd]
    else
      @answer = answer_tab[:repOver]
    end
  end
end
