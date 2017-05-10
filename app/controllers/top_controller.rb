class TopController < ApplicationController
  def index
    @question = Question.new
    # @questions = current_user.group.questions
    # @questions = Question.includes(:user).where(users: {group_id: current_user.group_id}).order("questions.created_at DESC")
    #現在ログインしているユーザーのfeed_contentを複数取得する
    # feed_contents = current_user.group.feed_contents
    #feed_contentsからそれぞれcontentのみ取得する
    # @feed_contents = feed_contents.map(&:content)
    @feed_contents = current_user.group.feed_contents.includes(:content).page(params[:page]).per(5)
    @feed_contents_resource = @feed_contents.map(&:content)
  end
end
