class TopController < ApplicationController
  def index
    @question = Question.new
    @questions = current_user.group.questions
    # @questions = Question.includes(:user).where(users: {group_id: current_user.group_id}).order("questions.created_at DESC")
  end
end
