class CreateClubsessions < ActiveRecord::Migration
  def change
    create_table :clubsessions do |t|
      t.string :audience
      t.text :sessioninfo
      t.text :starttime
      t.text :endtime

      t.timestamps
    end
  end
end
