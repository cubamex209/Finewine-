class FixPassword < ActiveRecord::Migration[5.1]
  def change
    rename_column :speakers, :password, :password_digest 
  end
end
