class Team < ActiveRecord::Base
  validates_presence_of :name

  has_many :players

  has_many :comments

  belongs_to :user

end
