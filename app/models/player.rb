class Player < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :position

  belongs_to :team
end
