class AddColumsToPlayers < ActiveRecord::Migration
  def change
  	add_column :players, :number, :integer
  	add_column :players, :birthday, :date
  end
end
