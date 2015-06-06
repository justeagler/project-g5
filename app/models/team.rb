class Team < ActiveRecord::Base
  validates_presence_of :name

  has_many :players

  belongs_to :user

end
