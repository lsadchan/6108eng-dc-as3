class CreateRacingteams < ActiveRecord::Migration
  def change
    create_table :racingteams do |t|
      t.text :title
      t.text :body

      t.timestamps
    end
  end
end
