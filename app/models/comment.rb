class Comment < ActiveRecord::Base
  # validates_presence_of :title
  validates_presence_of :body
  validates_presence_of :username

  belongs_to :team
end
