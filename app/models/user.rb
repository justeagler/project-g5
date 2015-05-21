class User < ActiveRecord::Base
  include Clearance::User

  has_many :teams

  def team
    teams.first
  end
end
