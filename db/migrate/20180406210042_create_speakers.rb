class CreateSpeakers < ActiveRecord::Migration[5.1]
  def change
    create_table :speakers do |t|
      t.string :first
      t.string :email
      t.string :password_digest 

      t.timestamps
    end
  end
end
