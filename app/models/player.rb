class Player < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :position
  validates_presence_of :number
  validates_presence_of :birthday
  #validates_uniqueness_of :number
  belongs_to :team
end
