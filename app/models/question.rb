class Question < ActiveRecord::Base
  after_create :create_feed_content
  #association
  belongs_to :user
  belongs_to :group
  has_many :answers, dependent: :destroy
  has_one :feed_content, as: :content, dependent: :destroy

  #validation
  validates_presence_of :user_id, :text, :group_id

  def user_answer(user_id)
    Answer.find_by(user_id: user_id, question_id: self.id)
  end

  private
  def create_feed_content
    self.feed_content = FeedContent.create(group_id: self.group_id, updated_at: self.updated_at)
  end
end