class Team < ActiveRecord::Base
  validates_presence_of :name

  belongs_to :user

  has_many :players

  def players
    players.all
  end
end
