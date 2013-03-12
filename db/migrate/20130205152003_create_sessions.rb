class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.text :audience
      t.text :sessioninfo
      t.text :starttime
      t.text :endtime

      t.timestamps
    end
  end
end
