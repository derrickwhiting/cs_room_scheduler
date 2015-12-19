class AddDisplayToMeeting < ActiveRecord::Migration
  def change
    add_column :meetings, :display, :string
  end
end
