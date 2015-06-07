class AddCommentsTable < ActiveRecord::Migration
  def change
  	create_table :comments do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.string :username, null: false

      t.references :team, index: true, foreign_key: true

      t.timestamps
    end
  end
end
