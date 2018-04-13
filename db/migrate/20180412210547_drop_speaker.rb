class DropSpeaker < ActiveRecord::Migration[5.1]
  def change
    drop_table :speaker
  end
end
