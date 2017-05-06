class Question < ActiveRecord::Base

  #association
  belongs_to :user
  belongs_to :group

end