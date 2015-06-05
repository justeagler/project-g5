class CreatePlayer < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.string :position, null: false

      t.references :team, index: true, foreign_key: true

      t.timestamps
    end
  end
end
