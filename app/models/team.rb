class Team < ActiveRecord::Base

  validates_presence_of :name
  validates_length_of :name, :minimum => 2
  validates_uniqueness_of :name

  has_many :players

  has_many :comments

  belongs_to :user

end
