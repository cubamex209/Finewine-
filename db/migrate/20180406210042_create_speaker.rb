class CreateSpeaker < ActiveRecord::Migration[5.1]
  def change
    create_table :speaker do |t|
      t.string :first
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
