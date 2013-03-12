class AddPaperclipFieldsToRacingteam < ActiveRecord::Migration
  def change
    add_column :racingteams, :image_file_name, :string
    add_column :racingteams, :image_content_type, :string
    add_column :racingteams, :image_file_size, :integer
    add_column :racingteams, :image_updated_at, :datetime
  end
end
