class TopController < ApplicationController
  def index
    @question = Question.new
    # @questions = current_user.group.questions
    # @questions = Question.includes(:user).where(users: {group_id: current_user.group_id}).order("questions.created_at DESC")
    feed_contents = current_user.group.feed_contents  #現在ログインしているユーザーのfeed_contentを複数取得する
    @feed_contents = feed_contents.map(&:content)  #feed_contentsからそれぞれcontentのみ取得する
  end
end
